package CaseStudy.service;

import CaseStudy.model.TradeHistory;
import CaseStudy.service.ICustomerDAO.ICustomerDAO_hide;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements SQLsyntax, ICustomerDAO_hide {
    DB_Connection db_connection = DB_Connection.getInstance();

    @Override
    public void hideStaff(int staff_id, int customer_id,int service_time) {
        Connection cnn = db_connection.getConnection();
        PreparedStatement pstm_staff=null;
        PreparedStatement pstm_order_bill=null;
        try {
            cnn.setAutoCommit(false);
            pstm_staff = cnn.prepareStatement(SET_STAFF_STATUS);
            pstm_staff.setInt(1,staff_id);
            int rowEffected_StaffTable = pstm_staff.executeUpdate();
            pstm_order_bill = cnn.prepareStatement(CREATE_ORDER_BILL);

            pstm_order_bill.setInt(1,customer_id);
            pstm_order_bill.setInt(2,staff_id);
            pstm_order_bill.setInt(3,service_time);
            int rowEffected_OrderBillTable = pstm_order_bill.executeUpdate();

            if(rowEffected_OrderBillTable == 0 || rowEffected_StaffTable == 0){
                cnn.rollback();
            }else {
                cnn.commit();
            }
        } catch (SQLException e) {
            try {
                cnn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        }finally {
            try {
                if(pstm_order_bill!=null)pstm_order_bill.close();
                if(pstm_staff!=null)pstm_staff.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }

    public List<TradeHistory> exportHistory(int customId) {
        List<TradeHistory> historyList = new ArrayList<>();
        Connection cnn = db_connection.getConnection();
        try {
            PreparedStatement pstm = cnn.prepareStatement(CHECK_HISTORY_TRADE_BY_CUS_ID);
            pstm.setInt(1,customId);
            ResultSet rs = pstm.executeQuery();
            if(rs==null){
                return historyList;
            }else {
                while (rs.next()){
                    int id = rs.getInt("order_id");
                    String cusFirstName = rs.getString("firstName");
                    String cusLastName = rs.getString("lastName");
                    String create_time = rs.getString("create_time");
                    int duration = rs.getInt("duration");
                    String staffNickName = rs.getString("nickName");
                    historyList.add(new TradeHistory(id,cusFirstName,cusLastName,create_time,duration,staffNickName));
                }
            }
        } catch (SQLException e) {
            System.err.println("Error when exportHistory");
            e.printStackTrace();
        }
        return historyList;
    }
}

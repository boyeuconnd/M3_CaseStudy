package CaseStudy.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerDAO implements SQLsyntax {
    DB_Connection db_connection = DB_Connection.getInstance();


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
}

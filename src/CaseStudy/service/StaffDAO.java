package CaseStudy.service;

import CaseStudy.model.Staff;
import CaseStudy.service.interfaceStaffDAO.IStaffDAO_create;
import CaseStudy.service.interfaceStaffDAO.IStaffDAO_show;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StaffDAO implements IStaffDAO_show,SQLsyntax, IStaffDAO_create {
    DB_Connection db_connection = DB_Connection.getInstance();

    public static int getPermision() {
        return permision;
    }

    public static void setPermision(int input) {
        permision = input;
    }

    protected static int permision = 0;

    @Override
    public List<Staff> showAllStaff() {
        List<Staff> staffList = new ArrayList<>();
        Connection cnn = db_connection.getConnection();
        try {
            Statement stm =cnn.createStatement();
            ResultSet resultSet = stm.executeQuery(SHOW_ALL_STAFF);
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString(3);
                String nickName = resultSet.getString(4);
                String description = resultSet.getString(5);
                double price = resultSet.getDouble(6);
                String rank = resultSet.getString("staffRank");
                String status = resultSet.getString("staffStatus");
                String img = resultSet.getString ("img_url");
                staffList.add(new Staff(id,firstName,lastName,nickName,description,price,rank,status,img));

            }
        } catch (SQLException e) {
            System.err.println("Error when showAllStaff");
            e.printStackTrace();
        }

        return staffList;
    }

    @Override
    public void create(Staff staff) {
        if(getPermision()==1){
            Connection cnn = db_connection.getConnection();
            try {
                PreparedStatement pstm =cnn.prepareStatement(INSERT_STAFF);
                pstm.setInt(1,staff.getId());
                pstm.setString(2,staff.getFirstName());
                pstm.setString(3,staff.getLastName());
                pstm.setString(4,staff.getNickName());
                pstm.setString(5,staff.getDescription());
                pstm.setDouble(6,staff.getPrice());
                pstm.setString(7,staff.getRank());
                pstm.setString(8,staff.getStatus());
                pstm.setString(9,staff.getImgUrl());
                pstm.executeUpdate();

            } catch (SQLException e) {
                System.err.println("Error when create Staff");
                e.printStackTrace();
            }

        }else {
            throw new RuntimeException("Do not have permision");
        }
    }
}
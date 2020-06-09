package CaseStudy.service;

import CaseStudy.model.EnumStaffRank;
import CaseStudy.model.Staff;
import CaseStudy.service.interfaceStaffDAO.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StaffDAO implements IStaffDAO_show,SQLsyntax, IStaffDAO_create,
        IStaffDAO_selectById, IStaffDAO_updateById, IStaffDAO_deleteById, IStaff_DAO_selectByRank {
    DB_Connection db_connection = DB_Connection.getInstance();

    @Override
    public List<Staff> showAllStaff() {
        List<Staff> staffList = new ArrayList<>();
        Connection cnn = db_connection.getConnection();
        try {
            Statement stm = cnn.createStatement();
            ResultSet resultSet = stm.executeQuery(SHOW_ALL_STAFF);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString(3);
                String nickName = resultSet.getString(4);
                String description = resultSet.getString(5);
                double price = resultSet.getDouble(6);
                String rank = resultSet.getString("staffRank");
                String status = resultSet.getString("staffStatus");
                String img = resultSet.getString("img_url");
                staffList.add(new Staff(id, firstName, lastName, nickName, description, price, rank, status, img));

            }
        } catch (SQLException e) {
            System.err.println("Error when showAllStaff");
            e.printStackTrace();
        }

        return staffList;
    }

    @Override
    public void create(Staff staff) {
            Connection cnn = db_connection.getConnection();
            try {
                PreparedStatement pstm = cnn.prepareStatement(INSERT_STAFF);
                pstm.setInt(1, staff.getId());
                pstm.setString(2, staff.getFirstName());
                pstm.setString(3, staff.getLastName());
                pstm.setString(4, staff.getNickName());
                pstm.setString(5, staff.getDescription());
                pstm.setDouble(6, staff.getPrice());
                pstm.setString(7, staff.getRank());
                pstm.setString(8, staff.getStatus());
                pstm.setString(9, staff.getImgUrl());
                pstm.executeUpdate();

            } catch (SQLException e) {
                System.err.println("Error when create Staff");
                e.printStackTrace();
            }

    }

    @Override
    public Staff selectById(int id) {
        Connection cnn = db_connection.getConnection();
        Staff selectedStaff = null;
        try {
            PreparedStatement pstm = cnn.prepareStatement(SELECT_BY_ID);
            pstm.setInt(1, id);
            ResultSet resultSet = pstm.executeQuery();
            while (resultSet.next()) {
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString(3);
                String nickName = resultSet.getString(4);
                String description = resultSet.getString(5);
                double price = resultSet.getDouble(6);
                String rank = resultSet.getString("staffRank");
                String status = resultSet.getString("staffStatus");
                String img = resultSet.getString("img_url");


                selectedStaff = new Staff(id, firstName, lastName, nickName, description, price, rank, status, img);
            }
        } catch (SQLException e) {
            System.err.println("Error when select staff by id");
            e.printStackTrace();
        }
        return selectedStaff;
    }

    @Override
    public void updateById(int id, Staff staff) {
        Connection cnn = db_connection.getConnection();
        try {
            PreparedStatement pstm = cnn.prepareStatement(UPDATE_STAFF);
            pstm.setString(1,staff.getFirstName());
            pstm.setString(2,staff.getLastName());
            pstm.setString(3,staff.getNickName());
            pstm.setString(4,staff.getDescription());
            pstm.setDouble(5,staff.getPrice());
            pstm.setString(6,staff.getRank());
            pstm.setString(7,staff.getStatus());
            pstm.setString(8,staff.getImgUrl());
            pstm.setInt(9,staff.getId());
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public void deleteById(int id) {
        Connection cnn = db_connection.getConnection();
        try {
            PreparedStatement pstm = cnn.prepareStatement(DELETE_BY_ID);
            pstm.setInt(1,id);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Staff> selectByStaff(EnumStaffRank rank) {
        List<Staff> ultraList = new ArrayList<>();
        Connection cnn = db_connection.getConnection();
        try {
            PreparedStatement pstm = cnn.prepareStatement(SELECT_BY_RANK);
            pstm.setString(1,rank.toString());
            ResultSet resultSet = pstm.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String firstName = resultSet.getString("firstName");
                String lastName = resultSet.getString(3);
                String nickName = resultSet.getString(4);
                String description = resultSet.getString(5);
                double price = resultSet.getDouble(6);
                String staffRank = resultSet.getString("staffRank");
                String status = resultSet.getString("staffStatus");
                String img = resultSet.getString("img_url");
                ultraList.add(new Staff(id, firstName, lastName, nickName, description, price, staffRank, status, img));

            }
        } catch (SQLException e) {
            System.err.println("Error when selectByRank");
            e.printStackTrace();
        }

        return ultraList;
    }
}

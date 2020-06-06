package service;

import model.Staff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StaffDAO implements IStaffDAO_show,SQLsyntax {
    DB_Connection db_connection = DB_Connection.getInstance();

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
}

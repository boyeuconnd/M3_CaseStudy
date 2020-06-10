package CaseStudy.service.account;

import CaseStudy.model.Customer;
import CaseStudy.service.DB_Connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountManager {
    private final String USER_ADMIN = "admin";
    private final String PASSWORD_ADMIN = "admin";
    private final String SELECT_USERNAME =  "SELECT userName FROM customer WHERE userName = ?;";
    private final String SELECT_CUSTOMER =  "SELECT * FROM customer WHERE userName = ?;";
    private final String INSERT_CUSTOMER = "INSERT INTO customer (userName,password,firstName,lastName,email) " +
            "VALUES (?,?,?,?,?);";
    Connection cnn = DB_Connection.getInstance().getConnection();

    private boolean isUserNameExist(String user){
        try {
            PreparedStatement pstm = cnn.prepareStatement(SELECT_USERNAME);
            pstm.setString(1,user.toLowerCase());
            ResultSet rs = pstm.executeQuery();
            if(rs!=null){
                return true;}

        } catch (SQLException e) {
            return false;
        }
        return false;
    }

    public Customer login(String userName, String password){
        try {
            if(this.isUserNameExist(userName)){
                PreparedStatement pstm = cnn.prepareStatement(SELECT_CUSTOMER);
                pstm.setString(1,userName);
                ResultSet rs = pstm.executeQuery();
                while (rs.next()){
                    if(password.equals(rs.getString("password"))){
                        int id = rs.getInt("id");
                        String firstName = rs.getString("firstName");
                        String lastName = rs.getString("lastName");
                        String email = rs.getString("email");
                        int role = rs.getInt("role");
                        return (new Customer(id,firstName,lastName,email,userName,password,role));
                    }else {
                        return null;
                    }

                }

            }else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean signUp(Customer customer){
        try {
            PreparedStatement pstm = cnn.prepareStatement(INSERT_CUSTOMER);
            pstm.setString(1,customer.getAccount());
            pstm.setString(2,customer.getPassword());
            pstm.setString(3,customer.getFirstName());
            pstm.setString(4,customer.getLastName());
            pstm.setString(5,customer.getEmail());
            pstm.executeUpdate();
            return true;
        } catch (SQLException e) {
            return false;
        }

    }
}

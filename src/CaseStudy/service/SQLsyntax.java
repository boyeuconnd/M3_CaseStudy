package CaseStudy.service;

public interface SQLsyntax {
    String SELECT_BY_ID = "SELECT * FROM staff WHERE id = ?;";
    String SHOW_ALL_STAFF = "SELECT * FROM staff;";
    String INSERT_STAFF ="INSERT INTO staff(id,firstName,lastName,nickName," +
            "description,price,staffRank,staffStatus,img_url) VALUES (?,?,?,?,?,?,?,?,?);";
    String DELETE_BY_ID = "DELETE FROM staff WHERE id = ?;";
    String UPDATE_STAFF = "UPDATE staff SET firstName=?,lastName=?,nickName=?,description=?,price=?," +
            "staffRank=?,staffStatus=?,img_url=? WHERE id=?;";
    String SELECT_BY_RANK = "SELECT * FROM staff WHERE staffRank = ?;";
    String CREATE_ORDER_BILL = "INSERT INTO order_bills(customer_id, staff_id, duration, create_time) VALUES (?,?,?,NOW());";
    String SET_STAFF_STATUS = "UPDATE staff SET staffStatus = 'busy' where id =?;";
    String CHECK_HISTORY_TRADE_BY_CUS_ID ="select order_id,c.firstName,c.lastName,create_time," +
            "o.duration,s.nickName from order_bills o join customer " +
            "c on o.customer_id = c.id join staff s on o.staff_id = s.id where c.id =?;";
    String SELECT_CUSTOMER_BY_ID ="SELECT * FROM customer WHERE id = ?;";
}

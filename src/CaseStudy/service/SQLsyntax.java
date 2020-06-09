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
}

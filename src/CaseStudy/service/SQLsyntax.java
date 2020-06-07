package CaseStudy.service;

public interface SQLsyntax {
    String SHOW_ALL_STAFF = "SELECT * FROM staff;";
    String INSERT_STAFF ="INSERT INTO staff(id,firstName,lastName,nickName," +
            "description,price,staffRank,staffStatus,img_url) VALUES (?,?,?,?,?,?,?,?,?);";
}

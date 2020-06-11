package CaseStudy.service.interfaceStaffDAO;

import CaseStudy.model.Staff;

import java.sql.SQLException;

public interface IStaffDAO_create {
    boolean create(Staff staff) throws SQLException;
}

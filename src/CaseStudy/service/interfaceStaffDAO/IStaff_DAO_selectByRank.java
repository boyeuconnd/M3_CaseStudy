package CaseStudy.service.interfaceStaffDAO;

import CaseStudy.model.EnumStaffRank;
import CaseStudy.model.Staff;

import java.util.List;

public interface IStaff_DAO_selectByRank {
    List<Staff> selectByStaff(EnumStaffRank rank);
}

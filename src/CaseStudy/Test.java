package CaseStudy;

import CaseStudy.model.EnumStaffRank;
import CaseStudy.model.Staff;

public class Test {
    public static void main(String[] args) {
        Staff testStaff = new Staff();
        testStaff.setRank(EnumStaffRank.ultra);
        System.out.println(testStaff.getRank());


    }


}

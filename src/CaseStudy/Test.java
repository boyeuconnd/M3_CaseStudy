package CaseStudy;

import CaseStudy.model.EnumStaffRank;
import CaseStudy.model.Staff;

public class Test {
    public static void main(String[] args) {
        String url = "http://www.xiuren.org/cover.php?src=http://www.xiuren.org//images/2020/03/285581802.jpg";
        StringBuilder stringBuilder =  new StringBuilder(url);
        stringBuilder.delete(0,36);
        System.out.println(stringBuilder);

    }


}

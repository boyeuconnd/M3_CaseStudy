package CaseStudy.controller;

import CaseStudy.model.EnumStaffRank;
import CaseStudy.model.Staff;
import CaseStudy.service.StaffDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet(name = "ViewServlet",urlPatterns = "/view")
public class ViewServlet extends HttpServlet {
    StaffDAO staffDAO = new StaffDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String viewRank = request.getParameter("rank");
        if(viewRank==null) viewRank="";
        switch (viewRank){
            case "ultra":
                viewUltraRankStaff(request,response);
                break;
        }
    }

    private void viewUltraRankStaff(HttpServletRequest request, HttpServletResponse response) {
        List<Staff> ultraList = staffDAO.selectByStaff(EnumStaffRank.ultra);
        request.setAttribute("ultraList",ultraList);
        try {
            direction(request,response,"views/ultraRank.jsp");
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    private void direction(HttpServletRequest request,HttpServletResponse response, String jspLink ) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(jspLink);
        dispatcher.forward(request,response);
    }
}

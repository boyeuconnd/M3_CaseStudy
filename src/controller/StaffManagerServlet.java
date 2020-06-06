package controller;

import model.Staff;
import service.StaffDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "StaffManagerServlet",urlPatterns = "/staff")
public class StaffManagerServlet extends HttpServlet {
    StaffDAO staffDAO = new StaffDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action==null) action="";
        try{
            switch (action){
                case "create":
                    break;
                case "update":
                    break;
                case "delete":
                    break;
                default:
                    listStaff(request,response);
                    break;
            }
        }catch (SQLException sql){
            sql.printStackTrace();
        }

    }

    private void listStaff(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        List<Staff> staffList = staffDAO.showAllStaff();
        request.setAttribute("stafflist",staffList);
        try {
            direction(request,response,"layers/stafflist.jsp");
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

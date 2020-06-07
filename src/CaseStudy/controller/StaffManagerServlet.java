package CaseStudy.controller;

import CaseStudy.model.Staff;
import CaseStudy.service.StaffDAO;

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
        String action = request.getParameter("action");
        if(action==null) action="";
        switch (action){
            case "create":
                createStaff(request,response);
                break;
            case "update":
                break;
            case "delete":
                break;
            default:
                break;
        }
//        try{
//        }catch (IOException svl){
//            svl.printStackTrace();
//        }
    }

    private void createStaff(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String nickName = request.getParameter("nickname");
        String description = request.getParameter("description");
        Double price = Double.parseDouble(request.getParameter("price"));
        String rank = request.getParameter("staffRank");
        String status = request.getParameter("staffStatus");
        String img = request.getParameter("imgUrl");
        staffDAO.create(new Staff(id,firstName,lastName,nickName,description,price,rank,status,img));
        request.setAttribute("messenger","Staff Added");

        try {
            direction(request,response,"manager/create.jsp");
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action==null) action="";
        try{
            switch (action){
                case "create":
                    showCreateForm(request,response);
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

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        try {
            direction(request,response,"manager/create.jsp");
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
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

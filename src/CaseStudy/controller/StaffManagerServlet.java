package CaseStudy.controller;

import CaseStudy.model.Staff;
import CaseStudy.service.StaffDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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
                updateStaff(request,response);
                break;
            case "delete":
                deleteStaff(request, response);
                break;
            default:
                break;
        }
//        try{
//        }catch (IOException svl){
//            svl.printStackTrace();
//        }
    }

    private void deleteStaff(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        staffDAO.deleteById(id);
        request.setAttribute("messenger","Staff Deleted");
        try {
            direction(request,response,"manager/managerMenu.jsp");
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateStaff(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String nickName = request.getParameter("nickname");
        String description = request.getParameter("description");
        Double price = Double.parseDouble(request.getParameter("price"));
        String rank = request.getParameter("staffRank");
        String status = request.getParameter("staffStatus");
        String img = request.getParameter("imgUrl");
        staffDAO.updateById(id,new Staff(id,firstName,lastName,nickName,description,price,rank,status,img));
        request.setAttribute("messenger","Staff Update");
        try {
            direction(request,response,"manager/update.jsp");
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
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
                    showUpdateForm(request,response);
                    break;
                case "delete":
                    showDeleleForm(request,response);
                    break;
                case "show":
                    listStaff(request,response);
                    break;
                default:
                    showManagerMenu(request,response);
                    break;
            }
        }catch (SQLException sql){
            sql.printStackTrace();
        }


    }

    private void showDeleleForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));

        Staff deleteStaff = staffDAO.selectById(id);
        request.setAttribute("deleteStaff",deleteStaff);
        RequestDispatcher dispatcher = request.getRequestDispatcher("manager/delete.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showManagerMenu(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("manager/managerMenu.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
//        RequestDispatcher dispatcher = request.getRequestDispatcher("layers/login.jsp");
//        dispatcher.forward(request, response);


    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Staff updateStaff = staffDAO.selectById(id);
        request.setAttribute("updateStaff",updateStaff);
        try {
            HttpSession session = request.getSession();
            if(session.getAttribute("isLogin")!=null){
                Boolean isLogin = (Boolean)session.getAttribute("isLogin");
                if(isLogin){

                    direction(request,response,"manager/update.jsp");
                } else {
                    response.sendRedirect("login");
                }
            } else {
                response.sendRedirect("login");
            }
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {

        try {
            HttpSession session = request.getSession();
            if(session.getAttribute("isLogin")!=null){
                Boolean isLogin = (Boolean)session.getAttribute("isLogin");
                if(isLogin){

                    direction(request,response,"manager/create.jsp");
                } else {
                    response.sendRedirect("login");
                }
            } else {
                response.sendRedirect("login");
            }


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

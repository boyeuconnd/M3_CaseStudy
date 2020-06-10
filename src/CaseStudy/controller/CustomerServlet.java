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

@WebServlet(name = "CustomerServlet",urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    StaffDAO staffDAO = new StaffDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action==null)action="";
        switch (action){
            case "hide":
                showHideForm(request,response);
                break;
        }

    }

    private void showHideForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Staff hideStaff = staffDAO.selectById(id);
        request.setAttribute("hideStaff",hideStaff);
        try {
            direction(request,response,"customer/hide.jsp");
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

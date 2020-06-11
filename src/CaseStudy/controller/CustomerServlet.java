package CaseStudy.controller;

import CaseStudy.model.Staff;
import CaseStudy.service.CustomerDAO;
import CaseStudy.service.StaffDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CustomerServlet",urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    StaffDAO staffDAO = new StaffDAO();
    CustomerDAO customerDAO = new CustomerDAO();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if (action==null)action="";
        switch (action){
            case "hide":
                hideStaffById(request,response);
                break;
            default:
                break;
        }
    }

    private void hideStaffById(HttpServletRequest request, HttpServletResponse response) {
        int service_time;
        if(request.getParameter("time")==null) {
            service_time = 1;
        }else {
            service_time = Integer.parseInt(request.getParameter("time"));
        }
        int staff_id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        int customer_id = (int)session.getAttribute("id");
        customerDAO.hideStaff(staff_id,customer_id,service_time);
        request.setAttribute("messenger","Successful Purchase! Enjoy your time");
        try {
            direction(request,response,"customer/hideConfirm.jsp");
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
        if(action==null)action="";
        switch (action){
            case "hide":
                showHideForm(request,response);
                break;
            default:
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

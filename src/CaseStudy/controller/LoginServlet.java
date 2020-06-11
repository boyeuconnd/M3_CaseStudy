package CaseStudy.controller;

import CaseStudy.model.Customer;
import CaseStudy.service.DB_Connection;
import CaseStudy.service.StaffDAO;
import CaseStudy.service.account.AccountManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;

@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        String userName = request.getParameter("user");
        String password = request.getParameter("password");
        AccountManager accountManager = new AccountManager();
        RequestDispatcher dispatcher = null;
        Customer loginCustomer = accountManager.login(userName,password);
        if(loginCustomer!=null){
            HttpSession session = request.getSession();
            session.setAttribute("isLogin",true);
            session.setAttribute("role",loginCustomer.getRole());
            session.setAttribute("displayName",loginCustomer.getAccount());
            session.setAttribute("id",loginCustomer.getId());
            if(loginCustomer.getRole()==1){
                response.sendRedirect("staff?action");
            }else {
                response.sendRedirect("/");
            }
        }else {
            request.setAttribute("messenger","Account or password not correct!");
            dispatcher = request.getRequestDispatcher("layers/login.jsp");
            dispatcher.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher dispatcher = request.getRequestDispatcher("layers/login.jsp");
        dispatcher.forward(request,response);

    }
}

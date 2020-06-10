package CaseStudy.controller;

import CaseStudy.model.Customer;
import CaseStudy.service.account.AccountManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet",urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    AccountManager manager = new AccountManager();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        if(password1.equals(password2)){
            String firstName;
            String lastName;
            if(request.getParameter("firstName")==null){
                firstName ="";
            }else {
                firstName=request.getParameter("firstName");
            }
            if(request.getParameter("lastName")==null){
                lastName ="";
            }else {
                lastName=request.getParameter("lastName");
            }
            String userName = request.getParameter("userName");
            String email = request.getParameter("email");
            if(manager.signUp(new Customer(firstName,lastName,email,userName,password1))){
                request.setAttribute("messenger","Register done!");
            }else {
                request.setAttribute("messenger","UserName have been used before");
            }


        }else{
            request.setAttribute("messenger","2 Passwords not same");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/register.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/register.jsp");
        dispatcher.forward(request,response);
    }
}

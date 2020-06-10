package CaseStudy.controller.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AdminFilter",urlPatterns = "/staff")
public class AdminFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        HttpSession session = request.getSession();
        Object role = session.getAttribute("role");
        if(role==null){
            response.sendRedirect("/login");
        }else if ((int)role == 1){
            chain.doFilter(req,resp);
        }else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("layers/access_denied.jsp");
            dispatcher.forward(request,response);

        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}

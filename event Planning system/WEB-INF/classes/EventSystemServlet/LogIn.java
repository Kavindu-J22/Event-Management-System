package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import EventSystemDb.UserDbManagement;
import Modules.User;


@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LogIn() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("login") != null) {
			User user=new User();
			UserDbManagement udb=new UserDbManagement();
			
			user.setUsername(request.getParameter("uname"));
			user.setPassword(request.getParameter("password"));
			
			String user_type=udb.checkUser(user);
			if(user_type.equals("user")) {
				HttpSession session = request.getSession();
                session.setAttribute("uname", user.getUsername());
                response.sendRedirect("dashboard.jsp");
			}
			else if(user_type.equals("admin")) {
				HttpSession session = request.getSession();
                session.setAttribute("uname", user.getUsername());
                response.sendRedirect("adminDashboard.jsp");
			}
			else {
				response.sendRedirect("login.jsp");
			}
			
			
		}
	}

}

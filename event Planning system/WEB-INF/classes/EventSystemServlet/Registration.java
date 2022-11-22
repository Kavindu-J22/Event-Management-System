package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.UserDbManagement;
import Modules.User;

@WebServlet(name = "Registration", urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Registration() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user=new User();
		UserDbManagement udb=new UserDbManagement();
		if(request.getParameter("register") !=null) {
			System.out.println("gotit");
			user.setName(request.getParameter("name"));
			user.setAddress(request.getParameter("address"));
			user.setPhone(request.getParameter("phone"));
			user.setDob(request.getParameter("dob"));
			user.setEmail(request.getParameter("email"));
			user.setUsername(request.getParameter("uname"));
			user.setPassword(request.getParameter("password"));
			
			int x=udb.addUser(user);
			if(x>0) {
				response.sendRedirect("index.jsp");
			}
			else {
				response.sendRedirect("register.jsp");
			}
		}
	}

}

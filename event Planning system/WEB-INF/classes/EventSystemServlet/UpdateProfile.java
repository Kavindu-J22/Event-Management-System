package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.UserDbManagement;
import Modules.User;

@WebServlet(name="UpdateProfile",urlPatterns = {"/UpdateProfile"})
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateProfile() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("Update") != null) {
			User user=new User();
			UserDbManagement udb=new UserDbManagement();
			user.setName(request.getParameter("name"));
			user.setAddress(request.getParameter("address"));
			user.setPhone(request.getParameter("phone"));
			user.setDob(request.getParameter("dob"));
			user.setEmail(request.getParameter("email"));
			user.setUsername(request.getParameter("uname"));
			user.setPassword(request.getParameter("password"));
			
			int x=udb.updateUser(user);
			if(x>0) {
				response.sendRedirect("profile.jsp");
			}
			else {
				response.sendRedirect("update_profile.jsp");
			}
		}
	}

}

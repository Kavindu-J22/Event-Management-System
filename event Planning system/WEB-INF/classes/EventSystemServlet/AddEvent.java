package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.EventDbManagement;
import Modules.Event;

@WebServlet(name="AddEvent",urlPatterns = {"/AddEvent"})
public class AddEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddEvent() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("addEvent") !=null) {
			Event event=new Event();
			EventDbManagement edm=new EventDbManagement();
			
			event.setName(request.getParameter("name"));
			event.setCategory(request.getParameter("category"));
			event.setDescription(request.getParameter("description"));
			event.setPrice(Double.valueOf(request.getParameter("price")));
			
			int x=edm.addEvent(event);
			
			if(x>0) {
				response.sendRedirect("adminDashboard.jsp");
			}
			else {
				response.sendRedirect("addevent.jsp");
			}
			
			
		}
	}

}

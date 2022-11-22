package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.EventDbManagement;
import Modules.Event;

@WebServlet(name="UpdateEvent",urlPatterns = {"/UpdateEvent"})
public class UpdateEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateEvent() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("updateEvent")!=null) {
			Event event=new Event();
			EventDbManagement edm=new EventDbManagement();
			
			event.setEventId(Integer.valueOf(request.getParameter("eventid")));
			event.setName(request.getParameter("name"));
			event.setCategory(request.getParameter("category"));
			event.setDescription(request.getParameter("description"));
			event.setPrice(Double.valueOf(request.getParameter("price")));
			
			int x=edm.updateEvent(event);
			
			if(x>0) {
				response.sendRedirect("adminDashboard.jsp");
			}
			else {
				response.sendRedirect("editevent.jsp");
			}

		}
	}

}

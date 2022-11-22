package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.SelectedEventDbManagement;
import Modules.SelectedEvent;

@WebServlet(name="SelectEvent",urlPatterns = {"/SelectEvent"})
public class SelectEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SelectEvent() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("selectEvent") !=null) {
			SelectedEvent se=new SelectedEvent();
			SelectedEventDbManagement sedm=new SelectedEventDbManagement();
			
			se.setEventId(Integer.valueOf(request.getParameter("eventid")));
			se.setDate(request.getParameter("date"));
			se.setDescription(request.getParameter("description"));
			se.setNumOfGuest(Integer.valueOf(request.getParameter("no_of_guest")));
			se.setUsername(request.getParameter("uname"));
			se.setPlace(request.getParameter("place"));
			
			System.out.println(se.getUsername());
			int x= sedm.addSelectedEvent(se);
			if(x>0) {
				response.sendRedirect("myEvents.jsp");
			}
			else {
				response.sendRedirect("select_event.jsp");
			}
			
		}
	}

}

package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.SelectedEventDbManagement;
import Modules.SelectedEvent;

@WebServlet(name="SelectedEventUpdate",urlPatterns = {"/SelectedEventUpdate"})
public class SelectedEventUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SelectedEventUpdate() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("updateSelectedEvent")!=null) {
			SelectedEvent se=new SelectedEvent();
			
SelectedEventDbManagement sedm=new SelectedEventDbManagement();
			
			se.setDate(request.getParameter("date"));
			se.setDescription(request.getParameter("description"));
			se.setNumOfGuest(Integer.valueOf(request.getParameter("no_of_guest")));
			se.setUsername(request.getParameter("uname"));
			se.setPlace(request.getParameter("place"));
			se.setId(Integer.valueOf(request.getParameter("id")));
			
			System.out.println(se.getUsername());
			int x= sedm.updateSelectedEvent(se);
			if(x>0) {
				response.sendRedirect("myEvents.jsp");
			}
			else {
				response.sendRedirect("edit_selected_events.jsp");
			}
		}
	}

}

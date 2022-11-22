package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.CardDbManagement;
import Modules.CreditCard;

@WebServlet(name="AddCard", urlPatterns = {"/AddCard"})
public class AddCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddCard() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("addCard")!=null){
			CreditCard cc=new CreditCard();
			cc.setCardHoldername(request.getParameter("cardHolder"));
			cc.setCardNo(Integer.valueOf(request.getParameter("cardNumber")));
			cc.setCsv(Integer.valueOf(request.getParameter("csv")));
			cc.setExpireDate(request.getParameter("expDate"));
			cc.setUsername(request.getParameter("uname"));
			
			CardDbManagement cdm=new CardDbManagement();
			int x=cdm.addCard(cc);
			
			if(x>0) {
				response.sendRedirect("myCreditCards.jsp");
			}
			else {
				response.sendRedirect("addCard.jsp");
			}
		}
	}

}

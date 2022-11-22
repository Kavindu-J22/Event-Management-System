package EventSystemServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import EventSystemDb.CardDbManagement;
import Modules.CreditCard;

@WebServlet(name="EditCard",urlPatterns = {"/EditCard"})
public class EditCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EditCard() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("updateCard")!=null) {
			CreditCard cc=new CreditCard();
			cc.setCardHoldername(request.getParameter("cardHolder"));
			cc.setCardNo(Integer.valueOf(request.getParameter("cardNumber")));
			cc.setCsv(Integer.valueOf(request.getParameter("csv")));
			cc.setExpireDate(request.getParameter("expDate"));
			int old_number=Integer.valueOf(request.getParameter("old"));
			
			CardDbManagement cdm=new CardDbManagement();
			int x=cdm.updateCard(cc,old_number);
			
			if(x>0) {
				response.sendRedirect("myCreditCards.jsp");
			}
			else {
				response.sendRedirect("addCard.jsp");
			}
		}
	}

}

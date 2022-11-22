package EventSystemDb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Modules.CreditCard;
import Modules.User;

public class CardDbManagement {
	DatabaseConnection db=new DatabaseConnection();
	Connection con=db.getConnection();
	
	public ResultSet getCardDetails(User user) {
		ResultSet rs=null;
		
		try {
			Statement st=con.createStatement();
			String query="select * from creadit_card where username='"+user.getUsername()+"';";
			rs=st.executeQuery(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return rs;
	}
	
	public int addCard(CreditCard cc) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="insert into creadit_card values('"+cc.getUsername()+"','"+cc.getCardHoldername()+"',"+cc.getCardNo()+","+cc.getCsv()+",'"+cc.getExpireDate()+"');";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return a;
	}
	public int deleteCard(CreditCard cc) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="delete from creadit_card where card_number="+cc.getCardNo()+";";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		
		return a;	
				
			
	}
	public ResultSet getOneCardDetails(CreditCard cc) {
		ResultSet rs=null;
		
		try {
			Statement st=con.createStatement();
			String query="select * from creadit_card where card_number='"+cc.getCardNo()+"';";
			rs=st.executeQuery(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return rs;
	}
	public int updateCard(CreditCard cc,int old_number) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="update creadit_card set card_holder_name='"+cc.getCardHoldername()+"',card_number="+cc.getCardNo()+",csv="+cc.getCsv()+",expire_date='"+cc.getExpireDate()+"' where card_number="+old_number+";";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return a;
	}
}

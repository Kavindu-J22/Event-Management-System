package EventSystemDb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Modules.SelectedEvent;
import Modules.User;

public class SelectedEventDbManagement {
	DatabaseConnection db=new DatabaseConnection();
	Connection con=db.getConnection();
	
	public int addSelectedEvent(SelectedEvent se) {
		int a=0;
		
		try {
			Statement st=con.createStatement();
			String query="insert into user_event(username,event_id,date,place,description,no_of_guest) values('"+se.getUsername()+"',"+se.getEventId()+",'"+se.getDate()+"','"+se.getPlace()+"','"+se.getDescription()+"',"+se.getNumOfGuest()+");";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return a;
	}
	
	public ResultSet getSelectedEvents(User user) {
		ResultSet rs=null;
		try {
			Statement st=con.createStatement();
			String query="select * from user_event where username='"+user.getUsername()+"';";
			rs=st.executeQuery(query);
			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return rs;
	}
	
	public int deleteSelectedEvent(SelectedEvent se) {
		int a=0;
		try {
			System.out.println("Done..");
			Statement st=con.createStatement();
			String query="delete from user_event where id="+se.getId()+";";
			a=st.executeUpdate(query);
			System.out.println("Done..");
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return a;
	}
	public ResultSet getSelectedEvent(SelectedEvent se) {
		ResultSet rs=null;
		try {
			Statement st=con.createStatement();
			String query="select * from user_event where id="+se.getId()+";";
			rs=st.executeQuery(query);
			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return rs;
	}
	public int updateSelectedEvent(SelectedEvent se) {
		int a=0;
		
		try {
			Statement st=con.createStatement();
			String query="update user_event set date='"+se.getDate()+"',place='"+se.getPlace()+"',description='"+se.getDescription()+"',no_of_guest="+se.getNumOfGuest()+" where id="+se.getId()+";";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return a;
	}
	
	
}


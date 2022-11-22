package EventSystemDb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Modules.Event;

public class EventDbManagement {
	DatabaseConnection db=new DatabaseConnection();
	Connection con=db.getConnection();
	
	public ResultSet getEvents() {
		ResultSet rs=null;
		try {
			Statement st=con.createStatement();
			String query="select * from event";
			rs=st.executeQuery(query);
			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return rs;
	}
	public ResultSet getEvent(Event event) {
		ResultSet rs=null;
		try {
			Statement st=con.createStatement();
			System.out.println(event.getEventId());
			String query="select * from event where event_id="+event.getEventId()+";";
			rs=st.executeQuery(query);
			System.out.println("Done it");
			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return rs;
	}
	
	public int addEvent(Event event) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="insert into event(name,categorey,price,description) values('"+event.getName()+"','"+event.getCategory()+"',"+event.getPrice()+",'"+event.getDescription()+"');";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return a;
	}
	
	public int deleteEvent(Event event) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="delete from event where event_id="+event.getEventId()+";";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return a;
	}
	
	public int updateEvent(Event event) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="update event set name='"+event.getName()+"',categorey='"+event.getCategory()+"',price="+event.getPrice()+",description='"+event.getDescription()+"' where event_id="+event.getEventId()+";";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return a;
	}
}

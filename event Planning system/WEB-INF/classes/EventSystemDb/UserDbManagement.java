package EventSystemDb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Modules.User;

public class UserDbManagement {

	DatabaseConnection db=new DatabaseConnection();
	Connection con=db.getConnection();
	
	public int addUser(User user) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="insert into user(name,address,phone,dob,email,username,password) values('"+user.getName()+"','"+user.getAddress()+"','"+user.getPhone()+"','"+user.getDob()+"','"+user.getEmail()+"','"+user.getUsername()+"','"+user.getPassword()+"');";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return a;
		
	}
	public String checkUser(User user) {
		String role="";
		try {
			Statement st=con.createStatement();
			String query="select role from user where username='"+user.getUsername()+"' and password='"+user.getPassword()+"';";
			ResultSet rs=st.executeQuery(query);
			if(rs.next()) {
				role=rs.getString("role");
			}
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return role;
	}
	
	public ResultSet getDetails(User user) {
		ResultSet rs=null;
		try {
			Statement st=con.createStatement();
			String query="select * from user where username='"+user.getUsername()+"';";
			rs=st.executeQuery(query);
			
			
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return rs;
	}
	
	public int updateUser(User user) {
		int a=0;
		try {
			Statement st=con.createStatement();
			String query="update user set name='"+user.getName()+"',address='"+user.getAddress()+"',phone='"+user.getPhone()+"',dob='"+user.getDob()+"',email='"+user.getEmail()+"',password='"+user.getPassword()+"' where username='"+user.getUsername()+"';";
			a=st.executeUpdate(query);
		}
		catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return a;
		
	}
}

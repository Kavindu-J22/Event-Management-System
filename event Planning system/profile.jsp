<%@page import="java.sql.ResultSet"%>
<%@page import="EventSystemDb.UserDbManagement"%>
<%@page import="Modules.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Profile</title>
		
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
		  		background-size: 100% 140%;
	  			
			}
			
			.dvv{
				margin: auto;
				background-color : white;
			    font-size:120%;
			    font-weight: bold;
			    opacity: 0.8;
			    border-radius: 15px;
			    width:800px;
			    height:auto;
			    
			}
			
			p{
				font-size: 50px;
				font-family: 'Brush Script MT', cursive;
				font-weight: bold;
	    		text-shadow: 2px 2px gray;
	    		padding: 10px;
	    		text-align: center;
	    		
			}
			
			.bb{    
				background-color: #7158cd;
			    border-radius: 5px;	    
			    opacity: 1;
			    width:200px;
			}
			
			button{
				border-color: white;
			}
		</style>
	</head>
	<body>
		
			<%
				if(session.getAttribute("uname").equals("user")){
			%>
			<%@include file="user_header.jsp" %>
			<%}else{ %>
			<%@include file="admin_header.jsp" %>
			<%} %>
			<%
				User user=new User();
				user.setUsername((String)session.getAttribute("uname"));
				
				UserDbManagement udm=new UserDbManagement();
				ResultSet rs=udm.getDetails(user);
				if(rs.next()){
			%>
			<br>
			<div class="dvv">
				<p>Profile</p>
				<table align = "center">
					<tr>
						<td><label>Name : </label></td>
						<td><label><%=rs.getString(1) %></label></td>
					</tr>
					<tr>
						<td><label>Address : </label></td>
						<td><label><%=rs.getString(2) %> </label></td>
					</tr>
					<tr>
						<td><label>Phone No : </label></td>
						<td><label><%=rs.getString(3) %></label></td>
					</tr>
					<tr>
						<td><label>Date Of Birth : </label></td>
						<td><label><%=rs.getString(4) %></label></td>
					</tr>
					<tr>
						<td><label>User Name : </label></td>
						<td><label><%=rs.getString(6) %></label></td>
					</tr>
					<tr>
						<td><label>E-mail : </label></td>
						<td><label><%=rs.getString(5) %></label></td>
					</tr>
					<tr>
						<td><label>Password : </label></td>
						<td><label><%=rs.getString(7) %></label></td>
					</tr>
					<tr>
						<td align ="center" colspan="2" ><a href="update_profile.jsp"><button class="bb">Update Profile</button></a></td>
					</tr>
				</table>
				<br>
				
			<%} %>
		</div>
		
		<%@include file="footer.jsp" %>
	</body>
</html>
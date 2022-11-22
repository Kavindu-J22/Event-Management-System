<%@page import="EventSystemDb.EventDbManagement"%>
<%@page import="Modules.Event"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="EventSystemDb.SelectedEventDbManagement"%>
<%@page import="Modules.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>My Events</title>
		
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
	  			background-size: 100% 290%;
				
			}
			
			.dvv{
				margin: auto;
				background-color : white;
			    font-size:120%;
			    font-weight: bold;
			    opacity: 0.8;
			    border-radius: 15px;
			    width:1000px;
			    height:auto;
			    
			}
			
			.hhh{
				font-size: 50px;
				font-family: 'Brush Script MT', cursive;
				font-weight: bold;
	    		text-shadow: 2px 2px gray;
			}
			
			table{
				width : 950px;
			}
			button{
				border-color: white;
			}
			
			.bbb{    
				background-color: #7158cd;
			    border-radius: 5px;	    
			    opacity: 1;
			    width:100px;
			    border-color: white;
			}
			
			.hrn {
				  border-top: 2px solid purple;
			}
		</style>
	</head>
	<body>
		<%@include file="user_header.jsp" %>
		<br>
		<div class = "dvv">
			<p align ="center" class = "hhh"><caption >My Events</caption><p>
			<table align="center">
				<tr>
					<th>Date</th>
					<th>Event Name</th>
					<th>Place</th>
					<th>Description</th>
					<th>Number Of Guest</th>
					<th>Actions</th>
				</tr>
				<tbody>
				<%
					User user=new User();
					user.setUsername((String)session.getAttribute("uname"));
					
					SelectedEventDbManagement sedm=new SelectedEventDbManagement();
					ResultSet rs=sedm.getSelectedEvents(user);
					while(rs.next()){
				
				%>
					<tr>
						<td><%=rs.getString("date") %></td>
						<%
							Event event=new Event();
							event.setEventId(rs.getInt("event_id"));
							
							EventDbManagement edm=new EventDbManagement();
							ResultSet rs2=edm.getEvent(event);
							if(rs2.next()){
								
						%>
						<td><%=rs2.getString("name") %></td>
						<%} %>
						<td><%=rs.getString("place") %></td>
						<td><%=rs.getString("description") %></td>
						<td><%=rs.getString("no_of_guest") %></td>
						<td><a href="edid_selected_events.jsp?id=<%=rs.getInt("id") %>"><button class="bbb">Edit</button></a>
						<a href="delete_selected_events.jsp?id=<%=rs.getInt("id") %>"><button class="bbb">Remove</button></a></td>
						
					</tr>
					<tr>
                       	<td colspan="6"><p class = "hrn"></p></td>
                    </tr>
				<%} %>
				</tbody>
			</table>
		</div>
	</body>
</html>
<%@page import="Modules.SelectedEvent"%>
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
		<title>Edit Event</title>
		
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
	  			background-size: 100% 145%;
				
			}
			
			.dvvv{
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
			
			.bbb{    
				background-color: #7158cd;
			    border-radius: 5px;	    
			    opacity: 1;
			    width:200px;
			    border-color: white;
			}
			
			.tt{
				background-color: #D2D4D5
				
			}
			
			input{
				border-color: white;
			}
		</style>
	</head>
	<body>
		<%@include file="user_header.jsp" %>
		<br>
		<%
				SelectedEvent se=new SelectedEvent();
				se.setId(Integer.valueOf(request.getParameter("id")));		
		
				SelectedEventDbManagement sedm=new SelectedEventDbManagement();
				ResultSet rs=sedm.getSelectedEvent(se);
				if(rs.next()){
					Event event=new Event();
					event.setEventId(Integer.valueOf(rs.getInt("event_id")));
					
					EventDbManagement edm=new EventDbManagement();
					ResultSet rs2=edm.getEvent(event);
					if(rs2.next()){
						
		%>
		<div class = "dvvv">
			<h2 align ="center" class = "hhh"><%=rs2.getString("name") %></h2>
			<p align="center"><%=rs2.getString("description") %></p>
			<h3 align ="center" >Rs: <%=rs2.getDouble("price") %></h3>
			<%} %>
			<form action="SelectedEventUpdate" method="post">
			
				<table align="center">
					<tr>
						<td><label>Date</label></td>
						<td><input class = "tt" type="date" name="date" value="<%=rs.getString("date") %>"></td>
					</tr>
					<tr>
						<td><label>Place</label></td>
						<td><input class = "tt"  type="text" name="place" value="<%=rs.getString("place") %>"></td>
					</tr>
					<tr>
						<td><label>Description</label></td>
						<td><input class = "tt"  type="text" name="description" value="<%=rs.getString("description") %>"></td>
					</tr>
					<tr>
						<td><label>No Of Guest</label></td>
						<td><input class = "tt"  type="number" name="no_of_guest" value="<%=rs.getString("no_of_guest") %>"></td>
					</tr>
					<input type="text" name="uname" value="<%=(String)session.getAttribute("uname") %>" hidden>
					<input type="text" name="id" value="<%=rs.getInt("id") %>" hidden>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input class="bbb" type="submit" name="updateSelectedEvent" value="Update Event" ></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input class="bbb" type="reset" name="clear" value="Clear"></td>
					</tr>
				</table>
				
			</form>
			<%} %>
			<br>
		</div>
	</body>
</html>
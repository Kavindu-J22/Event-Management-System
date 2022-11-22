<%@page import="java.sql.ResultSet"%>
<%@page import="EventSystemDb.EventDbManagement"%>
<%@page import="Modules.Event"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Select event</title>
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
	  			background-size: 100% 227%;
				
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
		
		<%
			Event event=new Event();
			event.setEventId(Integer.valueOf(request.getParameter("id")));
			System.out.println(event.getEventId());
			EventDbManagement edm=new EventDbManagement();
			ResultSet rs=edm.getEvent(event);
			if(rs.next()){
				
		%>
		<br>
		<div class="dvv">
			<h2 align ="center" class = "hhh"><%=rs.getString("name") %></h2>
			<p  align ="center"><%=rs.getString("description") %></p>
			<h3  align ="center">Rs: <%=rs.getDouble("price") %></h3>
			<%} %>
			<form action="SelectEvent" method="post">
				<table align="center">
					<tr>
						<td><label>Date</label></td>
						<td><input class = "tt" type="date" name="date"></td>
					</tr>
					<tr>
						<td><label>Place</label></td>
						<td><input class = "tt" type="text" name="place"></td>
					</tr>
					<tr>
						<td><label>Description</label></td>
						<td><input class = "tt" type="text" name="description"></td>
					</tr>
					<tr>
						<td><label>No Of Guest</label></td>
						<td><input class = "tt" type="number" name="no_of_guest"></td>
					</tr>
					<input type="text" name="uname" value="<%=(String)session.getAttribute("uname") %>" hidden>
					<input type="text" name="eventid" value="<%=event.getEventId() %>" hidden>
					<tr><td><br></td></tr>
					<tr>
						<td colspan ="2" align="center"><input class="bbb" type="submit" name="selectEvent" value="Select Event" ></td>
					</tr>
					<tr>
						<td colspan ="2" align="center"><input class="bbb" type="reset" name="clear" value="Clear"></td>
					</tr>
				</table>
				
				<br>
			</form>
		</div>
		<%@include file="footer.jsp" %>
	</body>
</html>
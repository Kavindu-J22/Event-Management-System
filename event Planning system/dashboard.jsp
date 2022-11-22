<%@page import="EventSystemDb.EventDbManagement"%>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
		  		background-size: 100% 250%;
	  			
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
			
			.pp{
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
			    width:100px;
			}
			
			button{
				border-color: white;
			}
			
			table{
				width:750px;
			}
			
			.hrn {
				  border-top: 2px solid purple;
			}
		</style>
		
	</head>
	<body>
		<%@include file="user_header.jsp" %>
		<br>
		<div class="dvv">
			<h2 class="pp" >Dashboard of <%=session.getAttribute("uname") %></h2>
			<caption><p align="center"><b>Events</b><p></caption>
			<table align="center">
				<thead>
					<tr>
						<th>Event ID</th>
						<th>Name</th>
						<th>Categorey</th>
						<th>Price</th>
						<th>Description</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				<%
					EventDbManagement edm =new EventDbManagement();
					ResultSet rs=edm.getEvents();
					while(rs.next()){
					
				%>
					<tr>
						<td><%=rs.getInt("event_id") %></td>
						<td><%=rs.getString("name") %></td>
						<td><%=rs.getString("categorey") %></td>
						<td>Rs: <%=rs.getDouble("price") %></td>
						<td><%=rs.getString("description") %></td>
						<td><a href="select_event.jsp?id=<%=rs.getInt("event_id") %>"><button class = "bb">Select</button></a></td>
					</tr>
					<tr>
                        <td colspan="6"><p class = "hrn"></p></td>
                    </tr>
				<% }%>
				</tbody>
			</table>
			
		</div>
		<%@include file="footer.jsp" %>
	</body>
</html>
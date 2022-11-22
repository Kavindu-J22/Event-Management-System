<%@page import="java.sql.ResultSet"%>
<%@page import="EventSystemDb.CardDbManagement"%>
<%@page import="Modules.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Credit Card</title>
		
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
	  			background-size: 100% 245%;
				
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
			
			.bb{    
				background-color: #7158cd;
			    border-radius: 5px;	    
			    opacity: 1;
			    width:200px;
			    border-color: white;
			}
			
			.bbb{    
				background-color: #7158cd;
			    border-radius: 5px;	    
			    opacity: 1;
			    width:100px;
			    border-color: white;
			}
			
			table{
				width:800px;
			}
			
			.hrn {
				  border-top: 2px solid purple;
			}
		</style>
	</head>
	<body>
		<%@include file="user_header.jsp" %>
		<br>
		<div class="dvvv">
			<p align ="center" class = "hhh"><caption >My Cards</caption><br><p>
			<a href="addCard.jsp"><button class="bb">Add New</button></a>
		
			<table align="center">
				<tr>
					<th>Card Holder Name</th>
					<th>Card No</th>
					<th>Expire Date</th>
					<th>CSV</th>
					<th>Action</th>
				</tr>
				<tbody>
					<%
						User user=new User();
						user.setUsername((String)session.getAttribute("uname"));
						System.out.println(user.getUsername());
						CardDbManagement cdm=new CardDbManagement();
						
						ResultSet rs=cdm.getCardDetails(user);
						while(rs.next()){
					
					%>
					<tr>
						<td><%=rs.getString("card_holder_name") %></td>
						<td><%=rs.getInt("card_number") %></td>
						<td><%=rs.getInt("csv") %></td>
						<td><%=rs.getString("expire_date") %></td>
						<td>
							<a href="editCrad.jsp?cardNo=<%=rs.getString("card_number") %>"><button class="bbb">Edit</button></a>
							<a href="deleteCard.jsp?cardNo=<%=rs.getString("card_number") %>"><button class="bbb">Remove</button></a>
						</td>
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
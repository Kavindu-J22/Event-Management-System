<%@page import="java.sql.ResultSet"%>
<%@page import="EventSystemDb.CardDbManagement"%>
<%@page import="Modules.CreditCard"%>
<%@page import="Modules.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Edit Card</title>
		
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
	  			background-size: 100% 155%;
				
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
		<div class="dvvv">
		<p align ="center" class = "hhh">Edit Card</p>
		
			<%
				CreditCard cc=new CreditCard();
				cc.setCardNo(Integer.valueOf(request.getParameter("cardNo")));
				
				CardDbManagement cdm=new CardDbManagement();
				
				ResultSet rs=cdm.getOneCardDetails(cc);
				if(rs.next()){
			
			%>
			<form action="EditCard" method="post">
				<table align="center">
					<tr>
						<td><label>Card Holder Name :</label></td>
						<td><input class="tt" type="text" name="cardHolder" value="<%=rs.getString("card_holder_name") %>"></td>
					</tr>
					<tr>
						<td><label>Card Number :</label></td>
						<td><input class="tt" type="number" name="cardNumber" value="<%=rs.getString("card_number") %>"></td>
					</tr>
					<tr>
						<td><label>CSV :</label></td>
						<td><input class="tt" type="number" name="csv" value="<%=rs.getString("csv") %>"></td>
					</tr>
					<tr>
						<td><label>Expire Dae :</label></td>
						<td><input class="tt" type="text" name="expDate" value="<%=rs.getString("expire_date") %>"></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<input type="text" name="old" value="<%=rs.getString("card_number")%>" hidden><br>
					<tr>
						<td colspan="2" align="center" ><input class="bbb" type="submit" name="updateCard" value="Update Card"></td>
					</tr>
					<tr>
						<td colspan="2" align="center" ><input class="bbb" type="reset" name="clear" value="Clear"></td>
					</tr>
				</table>
			
				<br>
			</form>
			<%} %>
			
		</div>
		
	</body>
</html>
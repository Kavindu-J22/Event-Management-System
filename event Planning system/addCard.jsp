<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add Card</title>
		
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
	  			background-size: 100% 165%;
				
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
			
			<form action="AddCard" method="post">
				<table align="center">
					<tr>
						<td><label>Card Holder Name :</label></td>
						<td><input class="tt" type="text" name="cardHolder"></td>
					</tr>
					
					<tr>
						<td><label>Card Number :</label></td>
						<td><input class="tt" type="number" name="cardNumber"></td>
					</tr>
					<tr>
						<td><label>CSV :</label></td>
						<td><input class="tt" type="number" name="csv"></td>
					</tr>
					<tr>
						<td><label>Expire Dae :</label></td>
						<td><input class="tt" type="text" name="expDate"></td>
					</tr>
					<input type="text" name="uname" value="<%=session.getAttribute("uname")%>" hidden><br>
					<tr>
						<td align="center" colspan="2"><input class="bbb" type="submit" name="addCard" value="Add Card"></td>
					</tr>
					<tr>
						<td align="center" colspan="2"><input class="bbb" type="reset" name="clear" value="Clear"></td>
					</tr>
				</table>
				
				<br>
			</form>
		</div>
	</body>
</html>
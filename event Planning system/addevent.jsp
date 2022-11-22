<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add event</title>
		
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
		    
		    .bb{    
				background-color: #7158cd;
			    border-radius: 5px;	    
			    opacity: 1;
			    width:200px;
			    border-color: white;
			}
			
			input{
				border-color: white;
			}
			.tt{
				background-color: #D2D4D5
				
			}
		</style>
	</head>
	<body>
	
		<%@include file="admin_header.jsp" %>
		<br>
		<div class="dvvv">	
			<h2 align ="center" class = "hhh" >Add Event</h2>
			<form action="AddEvent" method="POST">
				<table align ="center">
					<tr>
						<td><label>Name : </label></td>
						<td><input class="tt" type="text" name="name"></td>
					</tr>
					<tr>
						<td><label>Category : </label></td>
						<td><input class="tt" type="text" name="category"></td>
					</tr>
					<tr>
						<td><label>Price(RS) : </label></td>
						<td><input class="tt" type="number" name="price"></td>
					</tr>
					<tr>
						<td><label>Description : </label></td>
						<td><input class="tt" type="text" name="description"></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td colspan="2"><p align ="center"><input class="bb" type="submit" name="addEvent" value="Add Event"></p></td>
					</tr>
					<tr>
						<td colspan="2"><p align ="center"><input class="bb" type="reset" name="clear" value="Clear"></p></td>
					</tr>
				</table>
				<br>
			
			</form>
			<%@include file="footer.jsp" %>
		</div>
	</body>
</html>
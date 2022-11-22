<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>LogIn</title>
		<style type="text/css">
			body{
				background-image: url('https://www.ceipal.com/wp-content/uploads/2021/07/webinar-bg.jpg');
				background-repeat: no-repeat;
		  		background-size: 100% 170%;
	  			
			}
			
			.tt{
				background-color: #D2D4D5
				
			}
			input{
				border-color: white;
			}
			
			p{
				font-size: 50px;
				font-family: 'Brush Script MT', cursive;
				font-weight: bold;
	    		text-shadow: 2px 2px gray;
	    		padding: 10px;
	    		text-align: center;
	    		
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
			
			.bb{    
				background-color: #7158cd;
			    border-radius: 5px;	    
			    opacity: 1;
			    width:200px;
			}
		</style>
	</head>
	<body>
		<%@include file="header.jsp" %>
		<br>
		<form class="dvv" action="Login" method="post">
		
			<p>Login</p>
			<table align="center">
				<tr>
					<td><label>User Name : </label></td>
					<td><input class="tt" type="text" name="uname"></td>
				</tr>
				<tr>
					<td><label>Password : </label></td>
					<td><input class="tt" type="password" name="password"><br></td>
				</tr>
				<tr><td><br></td></tr>
				<tr>
					<td colspan="2" align ="center" ><input class="bb" type="submit" name="login" value="LogIn"></td>
				</tr>
				<tr><td><br></td></tr>
				<tr>
					<td colspan="2" align ="center" ><input class="bb" type="reset" name="clear" value="Clear"></th>
				</tr>
			</table>
			
			<br>
			<br>
	
		</form>
	
		<%@include file="footer.jsp" %>
	</body>
</html>
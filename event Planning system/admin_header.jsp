<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="./Styles/headerStyles.css">
	<script src="https://kit.fontawesome.com/0000000000.js" crossorigin="anonymous"></script>
	<style type="text/css">
		
		.btn{
			background-color:  #D0E5F7;
    		border-radius: 5px;
    		height: 40px;
    		width : 100px;
    		color: red;
    		
		}
		
		ul{
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			border: 2px solid #e7e7e7;
			background-color: #D0E5F7;
		}
		
		li{
		  	float: left;
		}
		
		li a{
		  	display: block;
		 	color: #666;
		  	text-align: center;
		  	padding: 10px 16px;
		  	text-decoration: none;
		}
		
		li a:hover:not(.active) {
		  	background-color: #3191E7;
		}
		
		li a.active {
		  	color: white;
		  	background-color: #04AA6D;
		}
	</style>
</head>
<body>
	<%@include file="session_check.jsp" %>
	<nav>
	  	<div id="navbarNav">
	    	<ul>
	    		<li>
	    			<a href="#">Dream Event</a>
	    		</li>
	      		<li>
	        		<a href="home.jsp">Home </a>
	      		</li>
	      		<li>
	        		<a href="adminDashboard.jsp">Dashboard</a>
	      		</li>
	      		<li style="float:right;margin: 2px;">
	        		<button class = "btn"  >
	    				<a href="profile.jsp">Profile</a>
	  				</button>
	      		</li> 
	        		
	      
	      		<li style="float:right;margin: 2px;">
	        		<button class = "btn" style="text-align: center;margin-bottom: 2px;">
	    				<a href="logout.jsp">Log out</a>
	  				</button>
	      		</li>
	 
	    	</ul>
	  	
	  		  	
	  	</div>
	</nav>

</body>
</html>
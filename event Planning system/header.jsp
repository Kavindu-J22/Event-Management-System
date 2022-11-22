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
			background-color: white;
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
	<nav>
	  	<div id="navbarNav">
	    	<ul>
	    		<li>
	    			<a href="#">Dream Event</a>
	    		</li>
	      		<li>
	        		<a href="index.jsp">Home <span class="sr-only"></span></a>
	      		</li>
	      		<li>
	        		<a href="dashboard.jsp">Dashboard</a>
	      		</li>
	      		<li>
	        		<a href="myEvents.jsp">Events</a>
	      		</li>
	      		<li>
	        		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
	        		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
	        		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
	        		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
	        		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
	        		&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
	      		</li> 
	        		<button class = "btn"  >
	    				<a href="register.jsp">Register</a>
	  				</button>
	      
	      		<li>
	        		&nbsp &nbsp &nbsp &nbsp 
	      		</li>
	 
	        		<button class = "btn" >
	    				<a href="login.jsp">Log in</a>
	  				</button>
	      
	      
	    	</ul>
	  	
	  		  	
	  	</div>
	</nav>

</body>
</html>
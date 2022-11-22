<%@page import="EventSystemDb.EventDbManagement"%>
<%@page import="Modules.Event" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Event event=new Event();
	event.setEventId(Integer.valueOf(request.getParameter("id")));
	EventDbManagement edm=new EventDbManagement();
	int x=edm.deleteEvent(event);
	
	if(x>0){
		response.sendRedirect("adminDashboard.jsp");
	}
	else{
		System.out.println("Can't delete");
	}


%>
</body>
</html>
<%@page import="EventSystemDb.SelectedEventDbManagement"%>
<%@page import="Modules.SelectedEvent"%>
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
	SelectedEvent se=new SelectedEvent();
	se.setId(Integer.valueOf(request.getParameter("id")));
	
	SelectedEventDbManagement sedm=new SelectedEventDbManagement();
	
	int x=sedm.deleteSelectedEvent(se);
	
	if(x>0){
		response.sendRedirect("myEvents.jsp");
	}


%>
</body>
</html>
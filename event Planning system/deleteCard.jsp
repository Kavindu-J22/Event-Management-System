<%@page import="EventSystemDb.CardDbManagement"%>
<%@page import="Modules.CreditCard"%>
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
	CreditCard cc=new CreditCard();
	cc.setCardNo(Integer.valueOf(request.getParameter("cardNo")));
	
	CardDbManagement cdm=new CardDbManagement();
	
	int x=cdm.deleteCard(cc);
	
	if(x>0){
		response.sendRedirect("myCreditCards.jsp");
	}
	

%>
</body>
</html>
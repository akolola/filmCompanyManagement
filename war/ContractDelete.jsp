<%@page import="com.myproject.service.ContractService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
	<body>
		<%ContractService accServ = new ContractService();
		Long id;
		int condition = 1;
		
		try {
			id = Long.valueOf(request.getParameter("id"));
		}
		catch(NumberFormatException e) {
			condition = 0;
		}
		
		
		if(condition == 0) {
			%>
			Inputed data has no numbers
			<%			
			}
			else {
		     accServ.deleteContract(Long.valueOf(request.getParameter("id")));		
			%><h2>Contract deleted</h2><br><%
			}
		 %>
		
	</body>
</html>
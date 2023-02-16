<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL실습</title>
</head>
<body>
	<form action="input.jsp"></form>
	<%=request.getParameter("number1") %>+<%=request.getParameter("number2") %>=
	<%=Integer.parseInt(request.getParameter("number1"))+Integer.parseInt(request.getParameter("number2")) %>
	
	<% 
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		int sum = number1 + number2;
	%>
	
	<%=number1%> + <%=number2%> = <%=sum%>
</body>
</html>
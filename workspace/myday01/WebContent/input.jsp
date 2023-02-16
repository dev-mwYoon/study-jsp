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
	<form action="result.jsp">
		<input type="text" name="number1" placeholder="정수 1개 입력">
		<input type="text" name="number2" placeholder="정수 1개 입력">
		<input type="submit" value="두 정수 덧셈 결과 보기">
	</form>
</body>
</html>
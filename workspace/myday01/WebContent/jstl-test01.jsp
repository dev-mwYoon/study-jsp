<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터</title>
</head>
<body>
	<h1>${param.name}</h1> 
	<h1>${param.age}</h1>	
	<h1>${requestScope.name}</h1> 
	<h1>${requestScope.age}</h1>	
</body>
</html>
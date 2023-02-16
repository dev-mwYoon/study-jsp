<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL TEST(변수)</h2>
	<c:set var="name" value="홍길동"/> <!-- 사이에 넣을게 없으면 />로 닫는 태그 생략 -->
	<h3>${name }</h3> <!-- 이렇게 쓰면 편하지만 -->
	<h3>${"<script>alert('안녕')</script>" }</h3> <!-- 이유 : 스크립트에 다 들어나기 때문에 보안 문제로 -->
	<h3><c:out value="${name }"/></h3> <!-- 이렇게 쓰는게 약속이다. -->
</body>
</html>
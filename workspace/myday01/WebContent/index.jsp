<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>JSP로 만든 페이지</h1>
	<a href="/MyServlet">Servlet 페이지로 이동</a> <!-- /MyServlet => 이건 절대 경로. 즉, 루트부터 하겠다. -->
	<form action="MyServlet"> <!-- myday01 뒤에 쓰겠다는 의미 -->
		<label>
			이름 <input type="text" name="name">
		</label>	
		<input type="submit" value="완료">
	</form>
</body>
<script>
	loaction.href = "/MyServlet"; // 연산을 해야만 이동시킬 수 있을 때 JS로 링크.
</script>
</html>
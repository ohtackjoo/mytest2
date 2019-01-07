<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>forwardFrom_ok.jsp페이지</h1>
	<%
	request.setCharacterEncoding("utf-8");
	%>
	<jsp:forward page="forwardTest.jsp">
		<jsp:param value="서초동" name="address"/>
	</jsp:forward>
</body>
</html>
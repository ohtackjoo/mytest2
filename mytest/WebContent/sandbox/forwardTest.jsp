<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String address=request.getParameter("address");
%>
<h1>forwardTest 페이지</h1>
<h2>요청 파라미터</h2>
<p>id : <%=id %></p>
<p>pwd : <%=pwd %></p>
<p>address : <%=address %></p>
</body>
</html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	Date d= new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String str= sdf.format(d);
%>
	<hr>
	<p>현재날짜:<%=str %></p>
	<h3>import - 파라미터 값</h3>
	${param.address}
</body>
</html>
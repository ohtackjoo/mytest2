<%@page import="com.herbmall.test.person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>싱글톤 연습</h1>
	<%
		//person p=new person(); new로 객체 생성불가
		person p=person.getInstance();
		p.showInfo();
	%>
</body>
</html>
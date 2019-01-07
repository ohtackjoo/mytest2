<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl 연습</h1>
	<c:set var="browser" value="${header['user-agent']} }"/>
	<h1>el표현식 - 출력</h1>
	<p>브라우저 정보 : ${browser}</p>
	<h1>jstl- out</h1>
	<c:out value="${browser}"/>
	
	<h1>jstl- remove</h1>
	<c:remove var="browser"/>
	
	<h1>제거후 출력</h1>
	<p>브라우저 정보 : ${browser}</p>
	
</body>
</html>
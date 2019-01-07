<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>if,choose~when~otherwise</h1>
	<c:set var="country" value="korea"></c:set>
	<c:if test="${!empty country}">
		<p>${country}에서 살아요
	</c:if>
	<c:if test="${empty country}">
		<p>변수에 값이 없습니다.
	</c:if>
	<c:choose>
		<c:when test="${country=='korea'}">
			<p>한국(${country})에서 살아요.
		</c:when>
		<c:when test="${country=='canada'}">
			<p>캐나다(${country})에서 살아요.
		</c:when>
		<c:otherwise>
			<p>그 이외의 나라에 살아요
		</c:otherwise>
	</c:choose>
</body>
</html>
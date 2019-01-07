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
<a href='<c:url value="/sandbox/jstlTest/foreachTrest.jsp"></c:url>'>foreachTrest로 이동</a>
<a href='<c:url value="/sandbox/jstlTest/dateTest.jsp?address=논현동"></c:url>'>dete.jsp로 이동</a>
<img src='<c:url value="/images/herb.JPG"></c:url>'><br>
<img src="${pageContext.request.contextPath }/images/notice2.JPG"><br>
<h1>컨택스트 패스</h1>
<p>${pageContext.request.contextPath }</p>
<br>
</body>
</html>
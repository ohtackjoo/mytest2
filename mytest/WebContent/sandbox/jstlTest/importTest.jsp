<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="dateTest.jsp" var="dateUrl"></c:import>
	<h1>jstl-import</h1>
	<p>inclide액션태그와 마찬가지로 실행결과를 inclide함 </p>
	${dateUrl }
	<h2>직접 import</h2>
	<c:import url="dateTest.jsp"></c:import>
	<h2>import - param 이용</h2>
	<c:import url="dateTest.jsp">
		<c:param name="address" value="서초동"></c:param>
	</c:import>
</body>
</html>
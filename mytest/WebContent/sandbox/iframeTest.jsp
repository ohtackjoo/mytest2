<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>iframe 연습</h1>
	<a href="http://www.nate.com" target="testFrame">nate로</a><br>
	<a href="requestInfo.jsp" target="testFrame">requestInfo.jsp로</a><br>
	<a href="http://www.naver.com" target="_blank">naver로</a><br>
	<a href="aaa.jsp">aaa.jsp로</a><br>
	<iframe src="dbcptest.jsp" width="500" height="250" name="testFrame"></iframe>
</body>
</html>
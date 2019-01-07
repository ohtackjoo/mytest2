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

%>
<h1>표현 언어(Expression Language) - EL</h1>
<p>\${2+5} => ${2+5}</p>
<p>\${10%3} => ${10%3}</p>
<p>\${20>7} => ${20>7}</p>
<p>\${header.host} => ${header.host}</p>
<p>\${header["user-agent"]} => ${header["user-agent"]}</p>
<h1>기존방식</h1>
<%
String host=request.getHeader("host");
String userAgent=request.getHeader("user-agent");
%>
<p>host : <%=host %></p>
<p>user-agent : <%=userAgent %></p>

</body>
</html>
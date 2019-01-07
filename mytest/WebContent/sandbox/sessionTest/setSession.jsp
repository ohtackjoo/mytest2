<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션에 아이디 저장하기</h1>
<%
	session.setAttribute("t_userid", "hong");
%>
<p>세션아이디 : <%=session.getId() %></p>
<p>세션유지시간 : <%=session.getMaxInactiveInterval() %>초</p>
<h2>세션에 저장하였습니다.</h2>
<hr>
<a href="useSession.jsp">세션사용</a>
</body>
</html>
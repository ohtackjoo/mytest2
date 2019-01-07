<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramTest.jsp</title>
</head>
<body>
<fmt:requestEncoding value="utf-8"/>
<%
   request.setCharacterEncoding("utf-8");
   String userid=request.getParameter("userid");
   String address=request.getParameter("address");
%>
<h1>파라미터 값</h1>
<p>userid : <%=userid %></p>
<p>address : <%=address %></p>

<h1>el표현식 이용 - 파라미터 값</h1>
<p>userid : ${param.userid }</p>
<p>address : ${param["address"] }</p>
<hr>
<h1>el 표현식 - param</h1>
<form name="frm1" method="post" action="paramTest.jsp">
   아이디 : <input type="text" name="userid" value="${param.userid }"><br>
   주소 : <input type="text" name="address" value="${param.address }"><br><br>
   <input type="submit" value="전송">
</form>
</body>
</html>
<%@page import="com.herbmall.test.simpleVo"%>
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
	request.setCharacterEncoding("utf-8");
	//기존방식
	/* String userid=request.getParameter("userid");
	String name=request.getParameter("name");
	String no=request.getParameter("no");
	
	simpleVo vo= new simpleVo();
	vo.setUserid(userid);
	vo.setName(name);
	vo.setNo(Integer.parseInt(no)); */
%>
<jsp:useBean id="simpleVo" class="com.herbmall.test.simpleVo" scope="page"></jsp:useBean>
<%--<jsp:setProperty property="userid" name="simpleVo"/>
<jsp:setProperty property="name" name="simpleVo"/>
<jsp:setProperty property="no" name="simpleVo"/> --%>
<jsp:setProperty property="*" name="simpleVo"/>
<h1>요청 파라미터</h1>
<%-- <p>userid : <%=userid %></p>
<p>name : <%=name %></p>
<p>no : <%=no %></p>
 --%>
 <p><jsp:getProperty property="userid" name="simpleVo"/></p>
<p><jsp:getProperty property="name" name="simpleVo"/></p>
<p><jsp:getProperty property="no" name="simpleVo"/></p>
</body>
</html>
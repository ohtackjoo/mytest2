<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>dbcp 이용 - 톰켓이 구현한 12324</h1>
<%
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	try{
		Context initContext=new InitialContext();
		Context cxt=(Context)initContext.lookup("java:/comp/env");//톰캣의 등록
		DataSource ds=(DataSource)cxt.lookup("jdbc/oracledb");//등록된것 중에 이 이름을 찾는다
		con=ds.getConnection();//콘넥션을 빌려온다
		ps=con.prepareStatement("select * from reboard");
		
		rs=ps.executeQuery();
		while(rs.next()){
			int no= rs.getInt("no");
			String title=rs.getString("title");
			out.print(no+" : ");
			out.print(title+"<br>");
		}
	}catch(NamingException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		if(rs!=null)rs.close();
		if(ps!=null)ps.close();
		if(con!=null)con.close();//콘넥션 반납
	}
%>
</body>
</html>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.herbmall.board.model.BoardVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.herbmall.board.model.BoardDAO"%>
<%@page import="com.herbmall.board.db.ConnectionPoolMgr1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>connectionPool 연습</h1>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>등록일</td>
		</tr>
	
	<%
		ConnectionPoolMgr1 pool=ConnectionPoolMgr1.getInstance();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try{
			con=pool.getConnection();
			ps=con.prepareStatement("select * from board where no<10 order by no desc");
			rs=ps.executeQuery();
			BoardDAO dao= new BoardDAO();
			BoardVO vo=null;
			while(rs.next()){
				int no=rs.getInt("no");
				String title=rs.getString("title");
				Timestamp regdate=rs.getTimestamp("regdate");%>
				<tr>
					<td><%=no %></td>
					<td><%=title %></td>
					<td><%=regdate %></td>
				</tr>
						
			<%}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			pool.dbClose(rs, ps, con);
		}
	%>
	</table>
</body>
</html>
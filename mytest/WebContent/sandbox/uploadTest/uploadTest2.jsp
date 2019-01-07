<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>여러개 파일 업로드</h1>
	<form method="post" enctype="multipart/form-data" action="uploadTest2_ok.jsp">
		<p>아이디:<input type="text"name="userid"></p>
		<p>파일첨부1 : <input type="file"name="upfile1"></p>
		<p>파일첨부2 : <input type="file"name="upfile2"></p>
		<input type="submit" value="전송">
	</form>
</body>
</html>
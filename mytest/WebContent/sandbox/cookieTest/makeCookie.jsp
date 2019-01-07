<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookie 저장하기</h1>
	<p>cookie - 상태 정보를 저장하기위해서 사용하는방법<br>
	클라이언트에 저장함<br>
	임시로 파일이 저장됨 -4KB이하<br>
	<%
		//쿠키 생성
		Cookie ck1=new Cookie("name","홍길동");
	
		//유효기간 설정
		ck1.setMaxAge(2*60);
		
		//쿠키 저장
		response.addCookie(ck1);
		
		//두번째 쿠키
		Cookie ck2=new Cookie("age","20");
		ck2.setMaxAge(30*60);
		ck2.setPath("/");
		response.addCookie(ck2);
	%>
	<h2>쿠키가 생성 되었습니다.</h2>
	<a href="useCookie.jsp">쿠키 사용하기</a>
</body>
</html>
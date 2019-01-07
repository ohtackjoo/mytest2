<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
<%@page import="org.omg.IOP.Encoding"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.IOException"%>
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
		//파일 업로드를  위한 변수
		String uploadDir="upload";
		
		//실제 경로 구하기
		String saveDir=config.getServletContext().getRealPath(uploadDir);
		System.out.println("[1]upload 물리적 경로"+saveDir);
		
		saveDir=application.getRealPath(uploadDir);
		System.out.println("[2]upload 물리적 경로"+saveDir);
		//둘다 사용가능(둘중하나 선택) 
			
		
		//테스트 경로
		saveDir="D:\\Oh_Taek_joo\\lecture\\wSlist\\jsp_ws\\herbmall\\WebContent\\upload";
		
		int maxSize=2*1024*1024;
		String encoding="utf-8";
		FileRenamePolicy policy=new DefaultFileRenamePolicy();
		try{
			MultipartRequest mr//필수!
			=new MultipartRequest(request,saveDir,maxSize,encoding,policy);
			System.out.println("업로드 완료됨");
			
			String fileName= mr.getFilesystemName("upfile");
			out.println("업로드 파일명"+fileName+"<br>");
			if(fileName!=null && !fileName.isEmpty()){
				String originalFileName= mr.getOriginalFileName("upfile");			
				String contentType= mr.getContentType("upfile");
				File file=mr.getFile("upfile");
				long fileSize=file.length();
				out.println("업로드 파일의 변경전 파일명 : "+originalFileName+"<br>");
				out.println("업로드 파일의 contentType : "+contentType+"<br>");
				out.println("업로드 파일의 크기 : "+fileSize+"<br>");
			}
			String id=request.getParameter("userid");//null 사용불가.
			String userid=mr.getParameter("userid");
			String address=mr.getParameter("address");
			out.println("request를 이용해서 읽어온 파라미터 id : "+id+"<br>");
			out.println("파라미터 userid : "+userid+"<br>");
			out.println("파라미터 address : "+address+"<br>");
		}catch(IOException e){
			System.out.println("업로드 용량이 2M을 초과하였습니다.");
			e.printStackTrace();
		}
	%>
</body>
</html>
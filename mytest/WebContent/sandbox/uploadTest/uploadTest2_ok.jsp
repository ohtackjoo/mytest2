<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.multipart.FileRenamePolicy"%>
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
	<h1>여러개 파일 업로드 결과</h1>
	<%
		try{
			String upDir="upload";
			String saveDir=config.getServletContext().getRealPath(upDir);
			
			saveDir = application.getRealPath(upDir);
			//테스트 경로
			saveDir="D:\\Oh_Taek_joo\\lecture\\wSlist\\jsp_ws\\herbmall\\WebContent\\upload";
			int maxSize=2*1024*1024;
			String encoding="utf-8";
			FileRenamePolicy policy=new DefaultFileRenamePolicy();
			MultipartRequest mr= new MultipartRequest(request,saveDir,maxSize,encoding,policy);
			
			Enumeration en=mr.getFileNames();
			while(en.hasMoreElements()){
				String upfile=(String)en.nextElement();
				
				String fileName=mr.getFilesystemName(upfile);
				if(fileName!=null&&!fileName.isEmpty()){
					String originalFileName=mr.getOriginalFileName(upfile);
					
					File file=mr.getFile(upfile);
					long fileSize=file.length();
					out.print("변경전 파일명 : "+originalFileName+"<br>");
					out.print("업로드 파일크기 : "+fileSize+"<br>");
				}
			}
			out.print("파라미터 userid : "+mr.getParameter("userid")+"<br>");
		}catch(IOException e){
			System.out.print("2M이상은 업로드 할수 없습니다.");
			e.printStackTrace();
		}
	%>
</body>
</html>
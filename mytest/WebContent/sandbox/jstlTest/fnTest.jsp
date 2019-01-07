<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fnTest.jsp</title>
</head>
<body>
<h1>jstl - functions</h1>
<p>
   ${fn:replace("XYZ", "Z", "A") }
</p>

<c:set var="str" value="abcd"></c:set>
<p>b를 B로 치환 : ${fn:replace(str, "b", "B") }</p>
<p>c의 위치 : ${fn:indexOf(str, "c") }</p>
<c:set var="birth" value="1997-10-23"/>
<p>태어난 달 : ${fn:substring(birth, 5, 7) } 월</p>

<h3>-을 구분자로 년,월,일로 분리 </h3> 
<c:set var="arr" value='${fn:split(birth, "-") }' />
<p>${arr[0]} 년 ${arr[1]} 월 ${arr[2]} 일</p>

<h3>함수의 결과를 변수에 넣기</h3>
<c:set var="s" value="${fn:replace(str, 'd','D') }"></c:set>
<p>d를 D로 치환한 결과 : ${s }</p>
</body>
</html>
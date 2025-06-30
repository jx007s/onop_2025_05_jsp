<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>direct2</title>
</head>
<body>
	<h1>direct2</h1>
	<%
	/*
	웹 브라우저   ------------------->  direct1.jsp  
                       1. 요청
                <------------------
                   2. aaa.jsp 로 리다이렉트

                  ----------------->  aaa.jsp
                   3. aaa.jsp 요청
                     
                 <------------------
                   4. aaa.jsp 정보 전달
	*/
	%>
	<script type="text/javascript">
	
		alert("정말 갈꼬야?")
		location.href="aaa.jsp"
		location.href="bbb.jsp"   //마지막 명령이 실행
	</script>
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>direct1</title>
</head>
<body>
	<h1>direct1</h1>
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
	
	
	
	
		response.sendRedirect("aaa.jsp");
        //페이지 이동 :  url 갱신
        
		//response.sendRedirect("bbb.jsp");
        // 에러발생
	%>
</body>
</html>
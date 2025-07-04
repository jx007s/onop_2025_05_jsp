<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="../ttrryy/exPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>err3</title>
</head>
<body>
	<h1>err3</h1>
	<%
	//에러페이지 우선 순위
	//1. page 내 try~catch 구문
	//2. page directive에서 지정한 errorPage
	//3. web.xml 에서 지정한 exception-type
	//4. web.xml 에서 지정한 error-code
	//5. 컨테이너가 제공하는 기본 에러 처리
	out.println("정상실행 1 <br/>");
	int a = 10/1;
	
	try{
		out.println("정상실행 2 <br/>");
		int [] arr = {11,22,33};
		int b = arr[5];
	}catch(Exception e){
		out.println("try~catch 예외처리 "+e.getMessage()+"<br/>");
	}
	
	out.println("정상실행 3 <br/>");
	
	%>
</body>
</html>
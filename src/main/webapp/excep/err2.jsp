<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>err2</title>
</head>
<body>
	<h1>err2</h1>
	<%
	//3. web.xml 에서 지정한 exception-type
	//4. web.xml 에서 지정한 error-code
	//5. 컨테이너가 제공하는 기본 에러 처리
	out.println("정상실행 1 <br/>");
	int a = 10/1;
	out.println("정상실행 2 <br/>");
	int [] arr = {11,22,33};
	int b = arr[5];
	out.println("정상실행 3 <br/>");
	
	%>
</body>
</html>
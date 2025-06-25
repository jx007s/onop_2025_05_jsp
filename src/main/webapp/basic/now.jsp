<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 디렉티브 import 등과 유사  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>now 입니다.</title>
</head>
<body>
	<h1>now 입니다.</h1>
	<script type="text/javascript">
		var nn = new Date();
		document.write(nn);
	</script>
	<br/>
	<%=new Date() %>
	<%  // jsp 코드는 페이지 소스 보기로 확인 불가 %>
	
</body>
</html>
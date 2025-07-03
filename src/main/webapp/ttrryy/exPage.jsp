<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exPage입니다.</title>
</head>
<body>
	<h1>exPage입니다.</h1>
	exception 사용할 경우 page directive 에서  isErrorPage="true" <br/>
	<%=exception.getMessage() %>
</body>
</html>
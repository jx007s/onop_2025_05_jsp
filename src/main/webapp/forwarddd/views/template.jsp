<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><%=request.getAttribute("title") %></title>
<style>
*{
	margin: 0;
	padding:0;
}
.wrapper{
	width:800px;
	height: 500px;
	background-color: #ff0;
	margin: auto;
}
</style>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="hhh.jsp"/>
		<section>난 내용</section>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>
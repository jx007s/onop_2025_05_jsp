<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드1</title>
<style>
img{
	width:100px;
}
</style>
</head>
<body>
	<h1>인클루드1</h1>
	
	<img src="../fff/family.jpg"/>
	<h3>tot ----- 1 </h3>
	<jsp:include page="aaa.jsp"/>
	<br/>
	<jsp:include page="bbb.jsp"/>
	<h3>tot ----- 2 </h3>
	<jsp:include page="sub/ccc.jsp"/>
	<br/>
	<jsp:include page="sub/ddd.jsp"/>
	<br/>
	<jsp:include page="sub/eee.jsp"/>
	<br/>
	
	<h3>tot ----- 3 </h3>
	pid : <%=request.getParameter("pid") %><br/>
	age : <%=request.getParameter("age") %><br/>
	gender : <%=request.getParameter("gender") %><br/>
	<br/>
	<jsp:include page="fff.jsp"/>
	
	<h3>tot ----- 4 </h3>
	<jsp:include page="fff.jsp?pid=mmm&age=67&gender=t&hobby=study"/>
	<jsp:include page="fff.jsp?pid=mmm&age=67"/>
	<jsp:include page="fff.jsp?pid=mmm&gender=t"/>
	<jsp:include page="fff.jsp?age=67&gender=t"/>
	<jsp:include page="fff.jsp?pid=mmm"/>
	
	<h3>tot ----- 5 </h3>
	<!-- jsp:param 액션태그를 이용하여 parameter 전달 -->
	<jsp:include page="fff.jsp">
		<jsp:param value="ggg" name="pid"/>
		<jsp:param value="coding" name="hobby"/>
	</jsp:include>
	
	<h3>tot ----- 6 </h3>
	<jsp:include page="ggg.jsp"></jsp:include>
</body>
</html>
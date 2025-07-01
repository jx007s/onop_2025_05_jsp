<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! //declaration - 정의부
	int b = 20;	// 멤버필드
%>    
<%	//scriptlet -  void _jspService() {}
	int a = 10;	// 지역변수
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tot2</title>
</head>
<body>
	<h1>tot2 입니다.</h1>
	pid : <%=request.getParameter("pid") %><br/>
	a : <%=a %><br/>
	b : <%=b %><br/>
	<h2>tot2---------------1</h2>
	<jsp:include page="sub2/mm1.jsp"/>
<%--	
	c : <%=c %><br/>
	d : <%=d %><br/>
 --%> 
</body>
</html>
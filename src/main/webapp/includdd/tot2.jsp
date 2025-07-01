<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! //declaration - 정의부
	int b = 20;	// 멤버필드
%>    
<%	//scriptlet -  void _jspService() {}
	int a = 10;	// 지역변수
	
	
	//page attribute 불가
	//page.setAttribute("pname","죠스");
	
	//현재 _jspService에서만 유효
	pageContext.setAttribute("ice", "바밤바");
	
	// 같은 요청(url) 까지 유효
	request.setAttribute("ice", "수박바");
	
	//response는 scope 가 아님
	//response.setAttribute("ice", "수박바");
	
	//session : 클라이언트가 같이 연결한 브라우저까지 유효
	session.setAttribute("ice", 123.456);
	
	
	// application : 현재서버가 유지될때까지 유효 (서버 재시동시 reset)
	application.setAttribute("ice", "보석바");
	
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
	<jsp:include page="sub2/mm1.jsp">
		<jsp:param value="45" name="age"/>
	</jsp:include>
<%--	
	c : <%=c %><br/>
	d : <%=d %><br/>
 --%>
 	<h2>tot2---------------2</h2> 
 	age : <%=request.getParameter("age") %><br/>
 	<%
 		Object pc_ice = pageContext.getAttribute("ice");
 		Object req_ice = request.getAttribute("ice");
 		Object se_ice = session.getAttribute("ice");
 		Object app_ice = application.getAttribute("ice");
 		
 		Object req_drink = request.getAttribute("drink");
 	%>
 	pc_ice : <%=pc_ice %><br/>
 	req_ice : <%=req_ice %><br/>
 	se_ice : <%=se_ice %><br/>
 	app_ice : <%=app_ice %><br/>
 	req_drink : <%=req_drink %><br/>
 	
	<h2>tot2---------------3</h2>
	
	<jsp:include page="sub2/mm2.jsp"/>
	 	
	<h2>tot2---------------4</h2>

	
	pc_drink : <%=pageContext.getAttribute("drink") %><br/>
 	req_drink : <%=request.getAttribute("drink") %><br/>
 	se_drink : <%=session.getAttribute("drink") %><br/>
 	app_drink : <%=application.getAttribute("drink") %><br/>

 	
 	pc_ice : <%=pageContext.getAttribute("ice") %><br/>
	req_ice : <%=request.getAttribute("ice") %><br/>
	se_ice : <%=session.getAttribute("ice") %><br/>
 	app_ice : <%=application.getAttribute("ice") %><br/>
 	
</body>
</html>
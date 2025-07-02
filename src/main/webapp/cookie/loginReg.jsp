<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pid = request.getParameter("pid");
	String pw = request.getParameter("pw");
	
	String msg = "로그인실패";

	
	if(pid.equals("aaa") && pw.equals("1111")){
		msg = "로그인 성공";

		
		//로그인 성공시 쿠키 저장
		Cookie coo = new Cookie("pname","한가인");
		response.addCookie(coo);
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<h1>로그인 처리</h1>
	<script type="text/javascript">
		alert("<%=msg%>")
		location.href="loginMain.jsp"
	</script>
	
</body>
</html>
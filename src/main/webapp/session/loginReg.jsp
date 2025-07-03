<%@page import="basic_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = "로그인 실패";

	String pid = request.getParameter("pid");
	String pw = request.getParameter("pw");
	
	if(pid.equals("aaa") && pw.equals("1111")){
		msg = "로그인 성공";
		session.setAttribute("pid", new MemberDTO(pid,pw,"장동건"));
	}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="loginMain.jsp"
</script>
</body>
</html>
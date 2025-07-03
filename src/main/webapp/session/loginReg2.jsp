<%@page import="java.util.HashMap"%>
<%@page import="basic_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String msg = "로그인 실패";
	
	String pid = request.getParameter("pid");
	String pw = request.getParameter("pw");

	HashMap<String, MemberDTO>mems = new HashMap();
	mems.put("aaa",new MemberDTO("aaa","1111","정우성"));
	mems.put("bbb",new MemberDTO("bbb","2222","조인성"));
	mems.put("ccc",new MemberDTO("ccc","3333","감우성"));
	mems.put("ddd",new MemberDTO("ddd","4444","감수성"));
	mems.put("eee",new MemberDTO("eee","5555","진주성"));

	
	
	//if(mems.containsKey(pid) && mems.get(pid).getPw().equals(pw)){
	if(mems.containsKey(pid)){
		
		MemberDTO dto = mems.get(pid);
		
		if(dto.getPw().equals(pw)){
			msg = dto.getPname()+"로그인 성공";
			session.setAttribute("pid", dto);
		}
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
	location.href="loginMain2.jsp"
</script>
</body>
</html>
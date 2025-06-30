<%@page import="basic_p.MemberDTO"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginReg</title>
</head>
<body>
	<h1>loginReg</h1>
<%
//회원정보
		HashMap<String, MemberDTO> mems = new HashMap<String, MemberDTO>();
		mems.put("aaa",new MemberDTO("aaa","1111","지예금"));
		mems.put("bbb",new MemberDTO("bbb","2222","지예은"));
		mems.put("ccc",new MemberDTO("ccc","3333","지예동"));
		mems.put("ddd",new MemberDTO("ddd","4444","지예철"));
		mems.put("eee",new MemberDTO("eee","5555","지예납"));
		
		String res = "로그인실패";
		String dst = "loginForm.jsp";
		
		String pid = request.getParameter("pid");
		String pw = request.getParameter("pw");
		//System.out.println(pid+","+pw);
		
		if(mems.containsKey(pid)) {
			MemberDTO dto =  mems.get(pid);
			if(dto.getPw().equals(pw)) {
				//System.out.println(pid+","+pw+" 일치");
				res = dto.getPname()+"님 안녕하세요";
				dst = "loginMain.jsp";
			}
		}
%>	
<script type="text/javascript">
	alert("<%=res%>")
	location.href="<%=dst%>"
</script>


</body>
</html>
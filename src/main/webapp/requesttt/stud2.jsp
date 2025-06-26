<%@page import="basic_p.ReqStudDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stud2</title>
</head>
<body>
	<h1>stud2</h1>
	<%
		ReqStudDTO dto = new ReqStudDTO(
				request.getParameter("pname"),
				request.getParameter("kor"),
				request.getParameter("eng"),
				request.getParameter("mat") 
			);
	
	%>
	
	<table border="">
		<tr>
			<td>이름</td>
			<td><%=dto.getPname() %></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%=dto.getKor() %></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%=dto.getEng() %></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%=dto.getMat() %></td>
		</tr>
		<tr>
			<td>총점</td>
			<td><%=dto.getTot() %></td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=dto.getAvg() %></td>
		</tr>
	</table>
	
	
</body>
</html>
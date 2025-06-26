<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stud</title>
</head>
<body>
	<h1>stud</h1>
	<%
		String pname = request.getParameter("pname");
		int kor = Integer.parseInt( request.getParameter("kor") );
		int eng = Integer.parseInt( request.getParameter("eng") );
		int mat = Integer.parseInt( request.getParameter("mat") );
		int tot = kor + eng + mat;
		int avg = tot / 3;
	%>
	
	<table border="">
		<tr>
			<td>이름</td>
			<td><%=pname %></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%=kor %></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%=eng %></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%=mat %></td>
		</tr>
		<tr>
			<td>총점</td>
			<td><%=tot %></td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=avg %></td>
		</tr>
	</table>
	
	
</body>
</html>
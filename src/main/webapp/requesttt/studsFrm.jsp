<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생5입력폼</title>
</head>
<body>
<h1>학생5입력폼</h1>
<form action="studsReg.jsp">
	<table border="">
		<tr>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
		</tr>
<%


for(String ttt : "장동건,장서건,장남건,장중건,북두신건".split(",")) { %>		
		<tr>
			<td><input type="text" name="pname" value="<%=ttt %>"/></td>
		<%for(String title : "kor,eng,mat".split(",")) { 
			int jum = (int)(Math.random()*50+50);
		%>
			<td><input type="text" name="<%=title %>" value="<%=jum %>" /></td>
		<%} %>
		</tr>
<% } %>		
		<tr>
			<td colspan="4" align="center"><input type="submit" value="입력" /></td>
		</tr>
	</table>
</form>
</body>
</html>
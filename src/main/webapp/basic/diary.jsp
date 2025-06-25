<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
<style>
img{
	width:400px;
}
tr > td:first-of-type {
	color:#f00;
}

tr > td:nth-of-type(7) {
	color:#00f;
}
.today{
	background-color: #ff0;
}
</style>
</head>

<%
	Date now = new Date();

	int today = now.getDate();
	//System.out.println(today);

	String title = new SimpleDateFormat("yyyy년 MM월").format(now);
	
	Calendar nowCa = Calendar.getInstance();
	
	// 이달의 마지막 날
	int last = nowCa.getActualMaximum(Calendar.DATE);
	
	// 1일 요일번호
	now.setDate(1);
	int first = now.getDay();
	//System.out.println(first);
%>
<body>
	<h1>달력</h1>
	<table border="">
		<tr align="center">
			<td colspan="7"><h2><%=title %></h2></td>
		</tr>
		<tr>
			<td colspan="7">
				<img src="../fff/family.jpg" alt="" />
			</td>
		</tr>
		<tr align="center">
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
		<tr align="center">
		<%
		// 1일 앞 요일 빈칸 넣기
		for(int i = 0; i<first; i++) {%>
			<td></td>
		<%} 
		
		//달력 일자 반복
		for(int i = 1; i<=last; i++) {
			now.setDate(i);
			//System.out.println(now.getDay());
			
			String bg = "";
			
			if(i == today){
				bg = "class='today'";	
			}
			
		%>
			<td <%=bg %> ><%=i %></td>
			
		<%
		//토요일 마다 줄바꾸기
		if(now.getDay()==6) { %>
		</tr><tr  align="center">
		<% } } %>
		</tr>
	</table>
	
	
	
</body>
</html>
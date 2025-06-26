<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Date now = new Date();

	SimpleDateFormat sdf = new SimpleDateFormat("MM_dd");
	String today = sdf.format(now);
	System.out.println(today);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1년 달력</title>
<style>
img{
	width:400px;
	height: 300px;
}
.mm > td:first-of-type {
	color:#f00;
}

.mm > td:nth-of-type(7) {
	color:#00f;
}
.today{
	background-color: #ff0;
}
</style>
</head>
<body>
<table >
	<% for(int big = 1; big<=12;big+=3 ) {%>
	<tr>
		<% for(int m=big; m<big+3; m++) {
			now.setMonth(m-1);
			
			now.setDate(1);
			int first = now.getDay();
			//System.out.println(first);
			
			Calendar nowCa = Calendar.getInstance();
			
			nowCa.setTime(now);
	
		// 이달의 마지막 날
		int last = nowCa.getActualMaximum(Calendar.DATE);
		
		
			
		%>
		<td valign="top">
			<table border="">
				<tr align="center">
					<td colspan="7"><h2><%=m %>월</h2></td>
				</tr>
				<tr>
					<td colspan="7">
						<img src="../fff/family<%=m %>.JPG" alt="" />
					</td>
				</tr>
				<tr  class="mm"  align="center">
					<td>일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td>토</td>
				</tr>
				<tr  class="mm"  align="center">
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
					
					if(today.equals( sdf.format(now) )){
						bg = "class='today'";	
					}
					
				%>
					<td <%=bg %> ><%=i %></td>
					
				<%
				//토요일 마다 줄바꾸기
				if(now.getDay()==6) { %>
				</tr><tr  align="center"  class="mm" >
				<% } } %>
				</tr>
			</table>
		
		
		
		
		</td>
		<% } %>
	</tr>
	<% } %>
</table>

</body>
</html>
<%@page import="basic_p.ReqStudDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ReqStudDTO> studs = new ArrayList();
	//String [] pnames = request.getParameterValues("pname");
	//String [] kors = request.getParameterValues("kor");
	//String [] engs = request.getParameterValues("eng");
	//String [] mats = request.getParameterValues("mat");
	String [] titles = "pname,kor,eng,mat".split(",");
	String [][] data = new String [titles.length][];
	
	for(int i = 0; i<titles.length; i++){
		data[i] = request.getParameterValues(titles[i]);
	}
	
	
	for(int i = 0; i < data.length; i++){
		studs.add(new ReqStudDTO(data[0][i], data[1][i], data[2][i], data[3][i]));
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studsReg</title>
</head>
<body>
<h1>studsReg</h1>
<table border="">
<tr>
<% for(String title: "이름,국어,영어,수학,총점,평균".split(",")) {%>
	<td><%=title %></td>
<%} %>
</tr>
<% for(ReqStudDTO st: studs) {%>
	<%=st.trStr() %>
<%} %>
</table>
</body>
</html>
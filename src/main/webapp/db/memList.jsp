<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mem2 목록입니다.</title>
</head>
<body>
	<h2>mem2 목록입니다.</h2>
<table border="">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>생일</td>
		<td>키</td>
		<td>메일번호</td>
	</tr>
	
<%
	//1. JDBC Driver 로드
	Class.forName("com.mysql.jdbc.Driver");

	//2. DB 연결 객체 생성
	String url = "jdbc:mysql://localhost:3306/onop_db?characterEncoding=utf-8";
					// jdbc:mysql://[dbms_IP]:[port]/[db이름]?characterEncoding=utf-8
	String user = "onop";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url, user, pw);
	
	//3. 쿼리문 실행하기 위한 객체 생성
	Statement stmt = con.createStatement();
	
	//4. 쿼리문 실행
	String sql = "select * from mem2";
	ResultSet rs = stmt.executeQuery(sql);
	
	System.out.println(rs);
	
	//5. 쿼리 실행 결과 호출
	while(rs.next()){
%>		
	<tr>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getDate("birth") %></td>
		<td><%=rs.getInt("height") %></td>
		<td><%=rs.getInt("mail") %></td>
	</tr>

<%
	}
	
	//6. 쿼리문 실행 객체 종료
	rs.close();
	stmt.close();

	//7. 연결 객체 종료
	con.close();
%>
</table>
</body>
</html>
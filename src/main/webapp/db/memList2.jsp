<%@page import="db_p.Mem2DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//view 페이지에 보낼 데이터
	ArrayList<Mem2DTO> memData = new ArrayList();

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
		
		// 튜플 1개 마다 dto 생성
		Mem2DTO dto = new Mem2DTO();
		
		// DB 튜플의 데이터를 dto에 대입
		dto.setId(rs.getString("id"));
		dto.setName(rs.getString("name"));
		dto.setHeight(rs.getInt("height"));
		dto.setMail(rs.getInt("mail"));
		dto.setBirth(rs.getDate("birth"));
		
		// list 항목에 dto 추가
		memData.add(dto);
	}
	
	//6. 쿼리문 실행 객체 종료
	rs.close();
	stmt.close();

	//7. 연결 객체 종료
	con.close();
	
	
	 //out.println(memData);
	 
	request.setAttribute("memData", memData); 
	
	
	/*
	새로운 DWP (Dynamic Web Project) -> JDBCPrj 를 생성하고
	
	onop_db의 exam 테이블의 내용을 
	
	examList.jsp 페이지를 통해 출력하세요
	
	view 페이지는 forward 하여 examListView.jsp 에서 구현하세요 
	
	
	*/
	
	
%>
<jsp:forward page="memListView.jsp"/>

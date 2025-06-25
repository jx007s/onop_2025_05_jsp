<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%!		//Declaration
		//클래스의 정의부와 같다
		// scripttt.jsp -> scripttt_jsp.java -> scripttt_jsp.class
	// class scripttt_jsp{}	

	public void jspInit(){  //변경 후 1회 자동 실행
		System.out.println("jspInit() 실행");
	}

	public void jspDestroy(){  //변경 후 1회 자동 실행
		System.out.println("jspDestroy() 실행");
	}
	
	
	//멤버필드
	int a = 10;
	String b = "아기상어";
	
	/* 클래스 정의부 이므로 실행구문을 넣을 수 없다. 
	for(int i = 0; i<10; i++){
		System.out.println(i);
	}*/
	//out.println("차금우");
	
	void meth_1(){
		System.out.println("meth_1() 실행");
		//out.println("차은수");  Declaration 에서 내장객체 접근 불가 
	}
%>    

<%	//scriptlet - 내장객체 접근 가능
	
	// _jspService() 구간  : servlet의 doGet(), doPost() 와 같음
	// public void _jspService(){}

	System.out.println("scriptlet() 실행");

/*  메소드 이므로 메소드 안에서 메소드 정의 불가
	void meth_1(){
		
	} */
	
	// 지역변수 : 메소드 내부에서 선언
	int c = 30;
	String d = "엄마상어";
	
	for(int i = 0; i<10; i++){
		System.out.println(i);
	}
	
	meth_1();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scripttt</title>

</head>
<body>
	<h2>스크립팅 구성요소 입니다.</h2>
	<% out.println("out으로 출력하지요"); 
		// out -> html 코드로 변환하는 스트림  (내장객체)
		out.println("차은우"); 
		out.println("<br/>");
		out.println("차동우");
		out.println(d);
	%>
	<!-- expression 은  out.println(); 을 쉽게 구현한 형태 -->
	<%=d %>
	<h3>박스들</h3>
<style type="text/css">
	.box{
		width: 50px;
		height: 50px;
		background: #ff0;
		margin: 2px;
		float: left;
	}
</style>
	<div class="box">box1이야</div>
	
	<% for(int i = 10;i <50 ; i+=10){
		out.println("<div class=\"box\">box"+i+"이야</div>");	
	} 
	for(int i = 100;i <500 ; i+=100){
	%>
	
	<div class="box">box<%=i %> 이야</div>
	
	<%} %>
	
	
</body>
</html>
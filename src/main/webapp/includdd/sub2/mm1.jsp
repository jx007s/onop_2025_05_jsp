<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! //declaration - 정의부
	int c = 300;	// 멤버필드
%>    
<%	//scriptlet -  void _jspService() {}
	int d = 400;	// 지역변수
	
	//int age = (int)request.getParameter("age");
	int age = Integer.parseInt(request.getParameter("age"));
%>     
    
<h3>mm1----시작</h3>
pid : <%=request.getParameter("pid") %><br/>
age : <%=age-10 %><br/>
<%--

다른 page의 지역변수와 멤버변수 접근 불가 
a : <%=a %><br/>
b : <%=b %><br/> 
--%>
c : <%=c %><br/>
d : <%=d %><br/> 
 	<%
 		Object pc_ice = pageContext.getAttribute("ice");
 		Object req_ice = request.getAttribute("ice");
 	%>
	pc_ice : <%=pc_ice %><br/>
	req_ice : <%=req_ice %><br/>
<h3>mm1----끝</h3>
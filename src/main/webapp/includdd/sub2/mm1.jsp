<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! //declaration - 정의부
	int c = 300;	// 멤버필드
%>    
<%	//scriptlet -  void _jspService() {}
	int d = 400;	// 지역변수
%>     
    
<h3>mm2----시작</h3>
pid : <%=request.getParameter("pid") %><br/>
<%--

다른 page의 지역변수와 멤버변수 접근 불가 
a : <%=a %><br/>
b : <%=b %><br/> 
--%>
c : <%=c %><br/>
d : <%=d %><br/> 
<h3>mm2----끝</h3>
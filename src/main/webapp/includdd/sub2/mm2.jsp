<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
    
<h3>mm2----시작</h3>
pid : <%=request.getParameter("pid") %><br/>

<%
	Object pc_ice = pageContext.getAttribute("ice");
	Object req_ice = request.getAttribute("ice");
	Object se_ice = session.getAttribute("ice");
	Object app_ice = application.getAttribute("ice");
%>
	pc_ice : <%=pc_ice %><br/>
	req_ice : <%=req_ice %><br/>
	se_ice : <%=se_ice %><br/>
 	app_ice : <%=app_ice %><br/>
<h3>mm2----중간</h3>
<%
	pageContext.setAttribute("drink","커피");
	request.setAttribute("drink","우유");
	session.setAttribute("drink","녹차");
	application.setAttribute("drink","홍차");
	
	pageContext.setAttribute("ice","월드콘");
	request.setAttribute("ice","구구콘");
	session.setAttribute("ice","수퍼콘");
	application.setAttribute("ice","레미콘");

	Object pc_drink = pageContext.getAttribute("drink");
	Object req_drink = request.getAttribute("drink");
	Object se_drink = session.getAttribute("drink");
	Object app_drink = application.getAttribute("drink");
%>
	pc_drink : <%=pc_drink %><br/>
	req_drink : <%=req_drink %><br/>
	se_drink : <%=se_drink %><br/>
 	app_drink : <%=app_drink %><br/>

	pc_ice : <%=pageContext.getAttribute("ice") %><br/>
	req_ice : <%=request.getAttribute("ice") %><br/>
	se_ice : <%=session.getAttribute("ice") %><br/>
 	app_ice : <%=application.getAttribute("ice") %><br/>

<h3>mm2----끝</h3>
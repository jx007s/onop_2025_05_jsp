<%@page import="basic_p.ReqStudDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setAttribute("mypageData", new ReqStudDTO("차은우","78","89","91"));
	request.setAttribute("title","마이페이지");
	request.setAttribute("mainUrl","service/mypageView.jsp");
%>
<jsp:forward page="views/template.jsp"/>
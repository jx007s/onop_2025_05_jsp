<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setAttribute("title","갤러리");
	request.setAttribute("mainUrl","service/gallView.jsp");
%>
<jsp:forward page="views/template.jsp"/>
<%@page import="basic_p.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ArrayList<NoticeDTO> noticeData = new ArrayList();
	noticeData.add(new NoticeDTO("제목1","현빈","15-08-09 12:23:45",0));
	noticeData.add(new NoticeDTO("제목2","원빈","16-10-11 12:23:45",1));
	noticeData.add(new NoticeDTO("제목3","투빈","17-01-02 12:23:45",2));
	noticeData.add(new NoticeDTO("제목4","김우빈","18-02-03 12:23:45",3));
	noticeData.add(new NoticeDTO("제목5","장희빈","19-03-04 12:23:45",4));
	noticeData.add(new NoticeDTO("제목6","커피빈","20-04-05 12:23:45",5));
	noticeData.add(new NoticeDTO("제목7","미스터빈","21-05-06 12:23:45",6));
	noticeData.add(new NoticeDTO("제목8","텅빈","22-07-08 12:23:45",7));
	noticeData.add(new NoticeDTO("제목9","증기터빈","23-09-10 12:23:45",8));
	noticeData.add(new NoticeDTO("제목10","속빈","24-11-17 12:23:45",9));
	
	request.setAttribute("noticeData", noticeData);


	request.setAttribute("title","공지사항");
	request.setAttribute("mainUrl","service/noticeView.jsp");
%>
<jsp:forward page="views/template.jsp"/>
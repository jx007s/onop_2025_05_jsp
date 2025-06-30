<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%  //parameter 가 중첩될 경우 가장 가까운 parameter 호출 %>    
ggg 시작 ----------- <br/>
pid : <%=request.getParameter("pid") %><br/>
age : <%=request.getParameter("age") %><br/>
gender : <%=request.getParameter("gender") %><br/>
hobby : <%=request.getParameter("hobby") %><br/>
<jsp:include page="fff.jsp"/>
ggg 끝 ----------- <br/>
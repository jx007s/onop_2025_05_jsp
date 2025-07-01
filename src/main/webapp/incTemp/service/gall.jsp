<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.imgBox{
	width:960px;
	
	clear: both;
}
.imgBox > img{
	width: 150px;
	height: 200px;
	display: block;
	float: left;
	padding:5px;
	border: 1px solid #888;
	margin: 5px;
}
</style>    
<h2>갤러리지</h2>
<div class="imgBox">
<% for(int i = 1; i<=20; i++){ %>
<img src="../fff/family<%=i%>.JPG"/>
<% } %>
</div>
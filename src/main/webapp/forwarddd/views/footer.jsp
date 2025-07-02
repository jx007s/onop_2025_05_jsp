<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
footer{
	width: 100%;
		height:100px; 
		line-height:100px;
		text-align: center;
		background-color: #0f0; /* desktop */
	}
	
/* phone */	
@media screen and (max-width:480px){
	footer{
		background-color: #f00;
	}
}

/* 태블릿 */	
@media screen and (min-width:480px) and (max-width:800px){
	footer{
		background-color: #00f;
	}
}
	
</style>    
<footer>난 바닥</footer>
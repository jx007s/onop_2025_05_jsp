<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재폼</title>
<script type="text/javascript">
	function submitGo(ttt){
		//alert(ttt+"눌렀지비롱")
		var ptid = document.getElementById("ptid")
		//ptid.value='atm'
		ptid.value=ttt
		//alert(ptid.value)
		myFrm.submit()
	}

</script>
</head>
<body>
<h1>결재폼</h1>
<form action="payReg2.jsp" name="myFrm">
 
<input type="text" name="money" value="123456"/>
<input type="hidden" value="card" name="pt" id="ptid" /> 
<!--
<input type="radio" name="pt" value="card" />카드결제
<input type="radio" name="pt" value="atm" />계좌이체
<input type="radio" name="pt" value="point" />포인트결제
<input type="submit" value="결제창으로" /> 

<input type="button" value="카드결제" onclick="submitGo('card')" /> 
<input type="button" value="계좌이체" onclick="submitGo('atm')" /> 
<input type="button" value="포인트결제" onclick="submitGo('point')" /> 
-->

<%
	for(String qqq: "카드결제_card,계좌이체_atm,포인트결제_point".split(",")){
		String [] arr = qqq.split("_");	
	
%>
	<input type="button" value="<%=arr[0] %>" onclick="submitGo('<%=arr[1] %>')" /> 
<%} %>
</form>
</body>
</html>

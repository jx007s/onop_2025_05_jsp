<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재폼</title>
<script type="text/javascript">
	function atmGo(){
		alert("atmGo 눌렀지비롱")
		myFrm.action = "pay/atm.jsp"
		myFrm.submit()
	}

</script>
</head>
<body>
<h1>결재폼</h1>
<form action="payReg2.jsp" name="myFrm">
 
<input type="text" name="money" value="123456"/>
<!--
<input type="radio" name="pt" value="card" />카드결제
<input type="radio" name="pt" value="atm" />계좌이체
<input type="radio" name="pt" value="point" />포인트결제
<input type="submit" value="결제창으로" /> 
-->
<input type="button" value="카드결제" /> 
</form>
</body>
</html>

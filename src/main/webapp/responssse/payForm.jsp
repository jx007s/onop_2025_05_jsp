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
<form action="pay/card.jsp" name="myFrm">
<input type="text" name="money"/>
<input type="submit" value="카드결제" />
<input type="button" value="계좌이체" onclick="atmGo()" />
</form>
</body>
</html>
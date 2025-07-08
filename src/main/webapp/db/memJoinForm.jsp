<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입이여</title>
</head>
<body>
<h1>회원가입이여</h1>
<form action="" method="post">
	<table border="">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td>생일</td>
			<td><input type="date" name="birth" /></td>
		</tr>
		<tr>
			<td>키</td>
			<td><input type="number" name="height" /></td>
		</tr>
		<tr>
			<td>메일번호</td>
			<td><input type="number" name="mail" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="회원가입" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>
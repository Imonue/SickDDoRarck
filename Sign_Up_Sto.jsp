<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>가게용 회원 가입</h1>
<form action="Sign_Up_Sto.jsp" method = "post">
	이름  <Input type = "text" name = "_name"/><p>
	ID  <Input type = "text" name = "_id"/><p>
	PW  <Input type = "text" name = "_pw"/><p>
	휴대폰 번호  <Input type = "text" name = "_phone"/><p>
	<input type = "hidden" name = "_check" value = "sto">
	<input type = "submit" value = "확인"/>
	<input type = "reset" value = "취소"/>
</form>
</body>
</html>
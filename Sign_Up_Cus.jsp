<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�մԿ� ȸ�� ����</h1>
<form action="Sign_Up_Cus.jsp" method = "post">
	�̸�  <Input type = "text" name = "_name"/><p>
	ID  <Input type = "text" name = "_id"/><p>
	PW  <Input type = "text" name = "_pw"/><p>
	�޴��� ��ȣ  <Input type = "text" name = "_phone"/><p>
	<input type = "hidden" name = "_check" value = "cus">
	<input type = "submit" value = "Ȯ��"/>
	<input type = "reset" value = "���"/>
</form>
</body>
</html>
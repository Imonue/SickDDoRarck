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
<form action="Sign_Up_Check.jsp" method = "post">
	�̸�  <Input type = "text" name = "_cus_name"/><p>
	ID  <Input type = "text" name = "_cus_id"/><p>
	PW  <Input type = "text" name = "_cus_pw"/><p>
	�޴��� ��ȣ  <Input type = "text" name = "_cus_phone"/><p>
	<input type = "hidden" name = "_check" value = "cus">
	<input type = "submit" value = "Ȯ��"/>
	<input type = "reset" value = "���"/>
</form>
</body>
</html>
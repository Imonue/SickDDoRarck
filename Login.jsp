<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�α��� ������</h1>
<form action="Login_Check.jsp" method = "post">
	ID  <Input type = "text" name = "_id"/><p>
	PW  <Input type = "text" name = "_pw"/><p>
	����  <Input type = "radio" name = "_user_type" value = "_cus"/>�մ�
	<Input type = "radio" name = "_user_type" value = "_sto"/>����<p>
	<input type = "submit" value = "�α���"/>
</form>
<Form action = "Sign_Up_Cus.jsp" method = "post">
	<input type = "submit" value = "�� ȸ�� ����">
</Form>
<Form action = "Sign_Up_Sto.jsp" method = "post">
	<input type = "submit" value = "���� ȸ�� ����">
</Form>
</body>
</html>
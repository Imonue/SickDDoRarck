<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>���Կ� ȸ�� ����</h1>
<form action="Sign_Up_Check.jsp" method = "post">
	���� �̸�  <Input type = "text" name = "_sto_name"/><p>
	ID  <Input type = "text" name = "_sto_id"/><p>
	PW  <Input type = "text" name = "_sto_pw"/><p>
	���� �޴��� ��ȣ  <Input type = "text" name = "_sto_tel"/><p>
	���� ��ȣ  <Input type = "text" name = "_sto_phone"/><p>
	���� ���� <select name = "_sto_type">
			<option value = "������" selected> ������ </option>
			<option value = "�뷡��">�뷡��</option>
			<option value = "PC��">PC��</option>
			<option value = "ī��">ī��</option>	
	</select><p>
	���� �ּ� <Input type = "text" name = "_sto_addr"/><p>
	���� ���� <Input type = "text" name = "_sto_lati"/>
	���� �浵 <Input type = "text" name = "_sto_longi"/><p>
	���� �ִ� ���̺� <Input type = "text" name = "_sto_max_table"/><p>
	<input type = "hidden" name = "_check" value = "sto">
	<input type = "submit" value = "Ȯ��"/>
	<input type = "reset" value = "���"/>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>���� ȭ��</h1>
���� ������ ȭ���� �����ʿ� �ְ�
���ʿ��� �α��� ��ư, �ؿ��� ���� ǥ��

<Form action = "Login.jsp" method = "post">
	<input type = "submit" value = "�α���">
</Form>
<%
	String id = "";
	
	id = (String)session.getAttribute("id");
	
	if(id == null || id.equals(""))
	{
		out.println("�α��� �ȵ� ����");
	}
	else
	{
		out.println("<h1>" + id + "�� ȯ���մϴ�!!" + "</h1>");
	}
%>
</body>
</html>
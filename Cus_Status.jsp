<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import =  "Database.*"
    import =  "Infomation.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Store store = DB.instance.GetStoUser(request.getParameter("_sto_id"));

	out.println("�����̸� : " + store.getSto_name() + "<br>");
	out.println("�����ּ� : " + store.getSto_addr() + "<br>");
	out.println("���Թ�ȣ : " + store.getSto_tel() + "<br>");
	out.println("��ü ���̺� : " + store.getSto_max_table() + "<br>");
	out.println("���� ���̺� : " + store.getSto_now_table() + "<br>");
	out.println("���డ�ɿ��� : " + store.getSto_res_pos() + "<br>");
%>
</body>
</html>
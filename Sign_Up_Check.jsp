<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String check = request.getParameter("_check");
	if(check.equals("sto")){
		// ���Կ� �ش��ϴ� ������ �޾ƿͼ� ���� ������Ʈ �ڵ�
		String id = request.getParameter("_id");
		String pw = request.getParameter("_pw");
		String store_name = request.getParameter("_store_name");
		String store_number = request.getParameter("_store_number");
		String phone = request.getParameter("_phone");
		String address = request.getParameter("_address");
		//String ���� Ÿ��
		//String ����/�浵
	}
	else if(check.equals("cus")){
		// �մԿ� �ش��ϴ� ������ �޾ƿͼ� ���� ������Ʈ �ڵ�
		String name = request.getParameter("_name");
		String id = request.getParameter("_id");
		String pw = request.getParameter("_pw");
		String phone = request.getParameter("_phone");
	}
%>
</body>
</html>
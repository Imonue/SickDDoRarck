<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "Database.*" import = "Infomation.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ�� ���� ����</h1>
<% 
	if(session.getAttribute("user_type").equals("sto_user"))
	{ 
		Store store = DB.instance.GetStoUser((String)session.getAttribute("id"));
		
		if(request.getParameter("_sto_pw") == null){
			// Initialize
		}
		else{
			store.setSto_pw(request.getParameter("_sto_pw"));
			store.setSto_tel(request.getParameter("_sto_tel"));
			store.setSto_phone(request.getParameter("_sto_phone"));
			store.setSto_max_table(Integer.parseInt(request.getParameter("_sto_max_table")));
			
			DB.instance.UpdateStoUser(store, (String)session.getAttribute("id"));
		}
		
%>
		<Form action = "Modify_User.jsp" method = "post">
		
			ID <input type = "text" name = "_sto_id" value = <%=store.getSto_id()%> disabled="disabled"><p>
			PW <input type = "password" name = "_sto_pw" value = <%=store.getSto_pw()%>><p>
			���� �̸� <input type = "text" name = "_sto_name" value = <%=store.getSto_name()%> disabled="disabled"><p>
			���� ��ȭ ��ȣ <input type = "text" name = "_sto_tel" value = <%=store.getSto_tel() %>><p>
			���� ��ǥ ��ȣ <input type = "text" name = "_sto_phone" value = <%=store.getSto_phone() %>><p>
			���� �ִ� ���̺� <input type = "text" name = "_sto_max_table" value = <%=store.getSto_max_table()%>><p>
					
			<input type = "submit" value = "ȸ�� ���� ����">
		</Form>
<%
	}
	else if(session.getAttribute("user_type").equals("cus_user"))
	{
		Customer customer = DB.instance.GetCusUser((String)session.getAttribute("id"));
		
		if(request.getParameter("_cus_pw") == null){
			// Initialize
		}
		else{
			customer.setCus_pw(request.getParameter("_cus_pw"));
			customer.setCus_phone(request.getParameter("_cus_phone"));
			
			DB.instance.UpdateCusUser(customer, (String)session.getAttribute("id"));
		}
%>
		<Form action = "Modify_User.jsp" method = "post">
		
			ID <input type = "text" name = "_cus_id" value = <%=customer.getCus_id()%> disabled="disabled"><p>
			PW <input type = "password" name = "_cus_pw" value = <%=customer.getCus_pw()%>><p>
			�̸� <input type = "text" name = "_cus_name" value = <%=customer.getCus_name()%> disabled="disabled"><p>
			��ȭ ��ȣ <input type = "text" name = "_cus_phone" value = <%=customer.getCus_phone() %>><p>		
					
			<input type = "submit" value = "ȸ�� ���� ����">
		</Form>
<%
	}
%>
</body>
</html>
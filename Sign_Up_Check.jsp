<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    import =  "Database.DB"
    import =  "Database.Store"
    import =  "Database.Customer"%>
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
		Store store = new Store();
			
		store.setSto_id(request.getParameter("_sto_id"));
		store.setSto_pw(request.getParameter("_sto_pw"));
		store.setSto_name(request.getParameter("_sto_name"));
		store.setSto_phone(request.getParameter("_sto_phone"));
		store.setSto_kepper_phone(request.getParameter("_sto_kepper_phone"));
		store.setSto_type(request.getParameter("_sto_type"));
		store.setSto_addr(request.getParameter("_sto_addr"));
		store.setSto_lati(Float.parseFloat(request.getParameter("_sto_lati")));
		store.setSto_longi(Float.parseFloat(request.getParameter("_sto_longi")));
		store.setSto_max_table(Integer.parseInt(request.getParameter("_sto_max_table")));
		
		DB.instance.AddStoUser(store);
		
		DB.instance.GetStoUser("kfc").getSto_lati();

	}
	else if(check.equals("cus")){
		// �մԿ� �ش��ϴ� ������ �޾ƿͼ� ���� ������Ʈ �ڵ�
		Customer customer = new Customer();
				
		customer.setCus_id(request.getParameter("_cus_id"));
		customer.setCus_pw(request.getParameter("_cus_pw"));
		customer.setCus_name(request.getParameter("_cus_name"));
		customer.setCus_phone(request.getParameter("_cus_phone"));
		
		DB.instance.AddCusUser(customer);
	}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"%>
<%@ page import = "Database.*" import = "Infomation.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("_id");
	String pw = request.getParameter("_pw");
	String user_type = request.getParameter("_user_type");
	
	if(id == null || pw == null || user_type == null) response.sendRedirect("Login.jsp");
	
	if(user_type.equals("_cus")){
		if(DB.instance.LoginCusUser(id, pw))
		{
			session.setAttribute("id", id);
			response.sendRedirect("Main.jsp");
		}
		else{
			System.out.println("로그인 실패");
			response.sendRedirect("Login.jsp");
		}
		
	}
	else if(user_type.equals("_sto")){
		if(DB.instance.LoginStoUser(id, pw))
		{
			session.setAttribute("id", id);
			response.sendRedirect("Main.jsp");
		}
		else{
			response.sendRedirect("Login.jsp");
		}
	}
%>
</body>
</html>
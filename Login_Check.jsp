<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");

	try
	{
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sickddorark", "root", "Kk5255014!");
		
		Statement stmt = conn.createStatement();
		
		
		stmt.executeUpdate("insert into member values('1','1','1')");
		
	}
	catch(Exception ex)
	{
		ex.getStackTrace();
	}

	//String id = request.getParameter("_id");
	//String pw = request.getParameter("_pw");
	
	//if(id.equals("inha") && pw.equals("1234")){
		//response.sendRedirect("Main.jsp");
	//}
	//else{
		//response.sendRedirect("Login.jsp");
	//}
%>
</body>
</html>
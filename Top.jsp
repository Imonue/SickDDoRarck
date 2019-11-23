<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
<% 
	String id = (String)session.getAttribute("id"); 
%>
	<h5><%=id %>님 환영합니다!</h5> 
</body>
</html>
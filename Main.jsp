<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>메인 화면</h1>
지도 나오는 화면이 오른쪽에 있고
왼쪽에는 로그인 버튼, 밑에는 상태 표시

<Form action = "Login.jsp" method = "post">
	<input type = "submit" value = "로그인">
</Form>
<%
	String id = "";
	
	id = (String)session.getAttribute("id");
	
	if(id == null || id.equals(""))
	{
		out.println("로그인 안되 있음");
	}
	else
	{
		out.println("<h1>" + id + "님 환영합니다!!" + "</h1>");
	}
%>
</body>
</html>
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

	out.println("가게이름 : " + store.getSto_name() + "<br>");
	out.println("가게주소 : " + store.getSto_addr() + "<br>");
	out.println("가게번호 : " + store.getSto_tel() + "<br>");
	out.println("전체 테이블 : " + store.getSto_max_table() + "<br>");
	out.println("현재 테이블 : " + store.getSto_now_table() + "<br>");
	out.println("예약가능여부 : " + store.getSto_res_pos() + "<br>");
%>
</body>
</html>
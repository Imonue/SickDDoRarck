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
		// 가게에 해당하는 정보를 받아와서 가게 업데이트 코드
		String id = request.getParameter("_id");
		String pw = request.getParameter("_pw");
		String store_name = request.getParameter("_store_name");
		String store_number = request.getParameter("_store_number");
		String phone = request.getParameter("_phone");
		String address = request.getParameter("_address");
		//String 가게 타입
		//String 위도/경도
	}
	else if(check.equals("cus")){
		// 손님에 해당하는 정보를 받아와서 가게 업데이트 코드
		String name = request.getParameter("_name");
		String id = request.getParameter("_id");
		String pw = request.getParameter("_pw");
		String phone = request.getParameter("_phone");
	}
%>
</body>
</html>
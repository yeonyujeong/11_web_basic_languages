<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	
		request.setCharacterEncoding("utf-8");
	
		System.out.println("--- 전송된 데이터 확인 ---");
		System.out.println("id : " + request.getParameter("id"));
		System.out.println();
	
	%>
</body>
</html>
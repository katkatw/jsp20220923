<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>08 to.jsp</h1>
	<% // 세션은 여러 리퀘스트가 공유하고 있는 ...
	String str1 = (String)request.getAttribute("name1"); // 다른 리퀘스트라 못꺼낸다.
	String str2 = (String)session.getAttribute("name2"); // 꺼낼 수 있다.
	%>
	
	<h1>name1 : <%= str1 %></h1>
	<h1>name2 : <%= str2 %></h1>
</body>
</html>
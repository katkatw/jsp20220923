<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>10to.jsp</h1>
	<% 
	List<String> list = (List<String>) session.getAttribute("names"); 
	%>
	
	<h3><%= list.get(0) %></h3>
	<h3><%= list.get(1) %></h3>

</body>
</html>
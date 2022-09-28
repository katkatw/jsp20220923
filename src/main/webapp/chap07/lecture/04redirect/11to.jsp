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
	<h1>11to.jsp</h1>
	<% 
	Map<String, String> map = (Map<String, String>) session.getAttribute("songs"); 
	%>
	
	<h3><%= map.get("song2") %></h3>
	<h3><%= map.get("song1") %></h3>

</body>
</html>
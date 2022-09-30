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
	<%
	pageContext.setAttribute("myName", "유재석");
	request.setAttribute("myName", "김종국");
	
	pageContext.setAttribute("your Name", "강호동");
	request.setAttribute("99Name", "김종국");
	%>
	
	<p>${myName }</p> <%-- "유재석" --%>
	<p>${pageScope.myName }</p> <%-- "유재석" --%>
	<p>${requestScope.myName }</p> <%-- "김종국" --%>
	<p>${pageScope["your Name"] }</p> <%-- "강호동" --%>
	<p>${requestScope["99Name"] }</p> <%-- "김종국" --%>
</body>
</html>
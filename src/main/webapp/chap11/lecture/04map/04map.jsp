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
	<%-- map이라는 이름의 Map타입 attribute 추가 --%>
	<%
	Map<String, String> map = new HashMap<>();
	map.put("abc", "kiefer");
	map.put("my key", "mia");
	map.put("lookie", "john doe");
	map.put("2", "alexander");
	
	
	request.setAttribute("map", map);   	// attribute명, 변수명
	pageContext.setAttribute("def", "lookie");
	
	%>
	
	
	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map[def] }</p> <%-- def라는 attribute를 찾는다 --%>
	<p>${map["2"] }</p>
	<p>${map[2] }</p> <%-- 안나옴 --%>
</body>
</html>
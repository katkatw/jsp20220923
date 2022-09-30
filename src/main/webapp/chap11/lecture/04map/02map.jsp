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
	<%--
	Map1이라는 이름의 Map 객체를 attribute에 넣기
	
	--%>
	<%
	//Map<String, String> map = Map.of("x", "사람", "y", "나무", "abc", "풀");
	//request.setAttribute("map1", map);
	Map<String, String> map = new HashMap<>();
	map.put("x", "jimin");
	map.put("y", "v");
	map.put("z", "rm");
	map.put("bts name", "jhope");
	request.setAttribute("map1", map);
	%>
	
	
	<p>{$map1.x}</p>
	<p>{$map1.y}</p>
	<p>{$map1.abc}</p>
	<%-- <p>{$map1.bts name}</p> --%>
</body>
</html>
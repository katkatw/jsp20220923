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
	<%-- 09from.jsp 에서 09to.jsp 로 포워드
		그리고 아래코드가 null이 아닌 값이 오류없이 출력되도록
		09from.jsp 완성 
	--%>
	<%
		Map<String, String> map = (Map<String, String>) request.getAttribute("address");
	%>
	
	<h1>trump : <%= map.get("trump") %></h1> <%-- new york --%>
	<h1>donald : <%= map.get("donald") %></h1> <%-- chicago --%>
	
	<hr>
	<h1>el 사용</h1>
	<h1>trump : ${adress.trump }</h1>
	<h1>donald : ${adress.donald }</h1>
</body>
</html>
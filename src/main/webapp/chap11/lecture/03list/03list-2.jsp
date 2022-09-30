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
	<%--
	list라는 이름의 java.util.List 타입의 객체를 attribute에 넣는 코드 작성
	필요하면 다른 attribute도 추가하세요
	 --%>
	 <%
	 java.util.List<String> list = java.util.List.of("zero","one","two");
	 request.setAttribute("attr1", list); // all
	 request.setAttribute("k", 0); // zero
	 request.setAttribute("x", list); // all?
	 request.setAttribute("m", "1"); // one
	 request.setAttribute("w", "0"); // zero
	 request.setAttribute("y", 2); // two
	 %>
	 
	 
	<p>${attr1[0]}</p> <%-- 출력 --%> <%-- zero --%>
	<p>${attr1[k]}</p> <%-- 출력 --%> <%-- zero --%>
	<p>${attr1[x]}</p> <%-- 출력 --%> <%-- all? --%>
	
	<p>${attr1[m]}</p> <%-- 출력 --%> <%-- one --%>
	<p>${attr1[w]}</p> <%-- 출력 --%> <%-- one --%>
	<p>${attr1[y]}</p> <%-- 출력 --%> <%-- 2 --%>

</body>
</html>
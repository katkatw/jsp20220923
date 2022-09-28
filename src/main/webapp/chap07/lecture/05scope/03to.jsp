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
	
	String s1 = (String) request.getAttribute("attr1");
	String s2 = (String) session.getAttribute("attr1");
	String s3 = (String) application.getAttribute("attr1");
	
	%>
	

	<p><%= s1 %></p> <%-- null 아닌 값 --%>
	<p><%= s2 %></p> <%-- null 아닌 값 --%>
	<p><%= s3 %></p> <%-- null 아닌 값 --%>
	
	<hr>
	<% // pageContext에 staticfinal. pageContext라는 페이지 영역만 알면 꺼내 쓸 수 있다
	String s4 = (String) pageContext.getAttribute("attr1", pageContext.PAGE_SCOPE); // 이것만 null 값
	String s5 = (String) pageContext.getAttribute("attr1", pageContext.REQUEST_SCOPE);
	String s6 = (String) pageContext.getAttribute("attr1", pageContext.SESSION_SCOPE);
	String s7 = (String) pageContext.getAttribute("attr1", pageContext.APPLICATION_SCOPE);
	%>

</body>
</html>
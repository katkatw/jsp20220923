<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:forward page="04to.jsp">
	<jsp:param value="widow" name="name"/> 
</jsp:forward>

<!-- name이라는 이름의 파라미터를 꺼내면 widow가 나온다 -->
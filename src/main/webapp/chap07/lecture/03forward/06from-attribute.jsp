<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
request.setAttribute("song", "dynamite"); // song이란 이름으로 dynamite를 넣어놈
%>

<jsp:forward page="06to-attribute.jsp"></jsp:forward>
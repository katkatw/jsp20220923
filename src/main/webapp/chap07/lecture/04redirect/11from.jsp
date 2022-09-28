<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%--
attribute 넣고
11to.jsp로 redirect 해서

11to.jsp에서 오류없이 null이 아닌 값 출력
 --%>
<%
Map<String, String> map = Map.of("song1","아이브","song2","방탄");
session.setAttribute("songs", map);

response.sendRedirect("11to.jsp");
%>
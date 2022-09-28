<%@page import="javax.websocket.SendResult"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%

// session에 attribute 추가하기
session.setAttribute("num1", 1);
session.setAttribute("num2", 5);

response.sendRedirect("09to.jsp");
%>
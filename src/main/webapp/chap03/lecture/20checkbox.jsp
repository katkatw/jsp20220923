<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 적절한 html 코드를 작성 --%>
<%-- name="name"인 요소는 text field로 만들기 --%>
<%-- name="heros"인 요소는 checkbox로 만들기 --%>
<h1>좋아하는 영웅 고르기</h1>
	<form action="">
		이름 <input type="text" name ="name">
		<br>
		<input type="checkbox" name ="heros" value = "captain"> 캡틴
		<br>
		<input type="checkbox" name ="heros" value = "ironman"> 아이언맨
		<br>
		<input type="checkbox" name ="heros" value = "blackpanther"> 블랙팬서
		<br>
		
		<input type="submit" value="전송">
	</form>
	
<hr>
<%
String name = request.getParameter("name");
String[] heros = request.getParameterValues("heros");
%>

<% 
if (heros != null) {
	out.print("<p>");
	out.print(name + "님이 좋아하는 영웅은 ");
	
	for (String hero : heros) {
		out.print(hero + " ");
	}
	
	out.print("입니다.");
	out.print("</p>");
}
%>


</body>
</html>











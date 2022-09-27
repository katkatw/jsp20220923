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
	<h2>42번째 파일</h2>
	<%--
	http://localhost:8080/jsp20220923/chap03/lecture/42bsolute-path.jsp
	프로토콜://host:port/path?querystring
	
	--%>
	<h3>절대 경로 : / 로 시작, port 번호 다음</h3> 		<!-- 포트번호는 없을 수도 있다 -->
	<form action="/jsp20220923/chap03/lecture/43absolute-path.jsp"> <!-- /jsp20220923 이거는 실제 운영시 이름이 바뀔 수 있다 -->
		<input type="text" name="age"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>
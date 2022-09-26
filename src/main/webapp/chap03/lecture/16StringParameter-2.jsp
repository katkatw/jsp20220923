<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<form action="">
	영어 : <input type = "text" name = "eng"> <br>
	수학 : <input type = "text" name = "mat"> <br>
	국어 : <input type = "text" name = "kor"> <br>
	
	<%-- submit 버튼 value 속성 : 버튼에 표시되는 내용 --%>
	<input type = "submit" value = "평균 구하기">
	</form>
	
	<hr>
<%
String eng = request.getParameter("eng");
String mat = request.getParameter("mat");
String kor = request.getParameter("kor");

Integer ENG = 0;
Integer MAT = 0;
Integer KOR = 0;

if (eng != null) {
	ENG = Integer.valueOf(eng); 
}
if (mat != null) {
	MAT = Integer.valueOf(mat); 
}
if (kor != null) {
	KOR = Integer.valueOf(kor); 
}

double avg = (MAT + ENG + KOR) / 3.0;
%>
	<%-- 영어, 수학, 국어 점수의 평균 구하기 --%>
<p>국영수 평균 : <%= avg %></p>
<p></p>
</body>
</html>
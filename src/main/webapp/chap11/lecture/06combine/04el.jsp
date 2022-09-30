<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	Map<String, Person> 타입 객체를 attribute에 넣고
	entry의 value들의 프로퍼티 el로 출력하는 코드 작성
	--%>
	
	<%
	Map<String, Person> map = new HashMap();
	request.setAttribute("people", map);

	Person p1 = new Person();
	p1.setName("spiderman");
	p1.setAge(700);
	p1.setAlive(true);

	Person p2 = new Person();
	p2.setName("oldman");
	p2.setAge(100);
	p2.setAlive(true);

	map.put("person1", p1);
	map.put("person2", p2);
	%>
	
	<p>${people.person1.name }</p>
	<p>${people.person1.age }</p>
	<p>${people.person1.alive }</p>
	<p>${people.person2.name }</p>
	<p>${people.person2.age }</p>
	<p>${people.person2.alive }</p>
	
	<hr>
	
	<p>${people["person1"].name }</p>
	<p>${people["person1"].age }</p>
	<p>${people["person1"].alive }</p>
	<p>${people["person2"].name }</p>
	<p>${people["person2"].age }</p>
	<p>${people["person2"].alive }</p>
	
	<hr>
	
	<p>${people["person1"]["name"] }</p>
	<p>${people["person1"]["age"] }</p>
	<p>${people["person1"]["alive"] }</p>
	<p>${people["person2"]["name"] }</p>
	<p>${people["person2"]["age"] }</p>
	<p>${people["person2"]["alive"] }</p>
</body>
</html>
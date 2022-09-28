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
	<h1>Scope 객체들 (5장 책 132쪽)</h1>
	<h3>pageContext, request, session, application</h3>
	
	<%--
	
	132쪽 설명
	page 영역 (pageContext) 
		: 하나의 jsp페이지를 처리할 때 사용되는 영역
		type (PageContext)
		
	request 영역 (request)
		: 하나의 http 요청을 처리할 때 사용되는 영역
		type (HttpServletRequest)
	
	session 영역 (session)
		: 하나의 웹 브라우저와 관련된 영역
		type (HttpSession)
	 
	 application 영역 (기본객체 application) // 톰캣에 여러 어플리케이션이 있을 수 있다 !!!
		: 하나의 웹 어플리케이션과 관련된 영역
		type (ServletContext)
		
	 --%>
	 
	<%
	pageContext.setAttribute("page1", "page attr1"); // 리퀘스트보단 작다
	request.setAttribute("req1", "req attr1"); // 하나의 요청이 끝날때까지
	session.setAttribute("sess1", "sess attr1"); // 같은 브라우저에서 온 모든 요청이 공유하는 세션
	application.setAttribute("app1", "app attr1"); // 웹어플리케이션 안의 서블릿이 모두 공유하는 ...
	%>
</body>
</html>
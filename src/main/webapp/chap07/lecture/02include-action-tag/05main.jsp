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
	<div>
	메인 컨텐츠!
		<p>
			name : <%= request.getParameter("name") %>
			age : <%= request.getParameter("age") %>
		</p>
	</div>

	<div>
		<jsp:include page="05sub.jsp">
			<jsp:param value="99" name="age"/>
		</jsp:include>
	</div>
	
	<div>
		sub.jsp 호출 후 <!-- 이미 삭제 돼서 없다 -->
		<p>
			age : <%= request.getParameter("age") %>
		</p>
	</div>
</body>
</html>
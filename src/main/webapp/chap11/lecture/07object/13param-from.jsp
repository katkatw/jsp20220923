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
	<form action="13param-to.jsp" method="post">
	<%--
		주문일자 : <input type="text" name="date" value=2022.09.30> <br>
		상품들 : <br>
		apple <input type="text" name="prod" value="apple">
		blackberry <input type="text" name="prod" value="blackberry">
		samsung <input type="text" name="prod" value="samsung">
		google <input type="text" name="prod" value="google">
		lg <input type="text" name="prod" value="lg">
	 --%>
	 	날짜 : <input type="date" name="date" value="2022-09-30"> <br>
		상품 : <br>
		
		<select name="prod" id="" multiple="" size="5">
			<option value="apple">apple</option>
			<option value="blackberry">blackberry</option>
			<option value="samsung">samsung</option>
			<option value="google">google</option>
			<option value="lg">lg</option>
		</select> <br>
	
		<input type="submit" value="전송">		
		<%-- input:s --%>
		
	</form>
</body>
</html>
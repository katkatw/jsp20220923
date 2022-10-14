<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>	
	<h1>${employee.id }번 직원 정보 수정</h1>
	
	<form action="${pageContext.request.contextPath }/Servlet29" method="post">
		<input type="hidden" name="id" value="${employee.id }">
		first name : <input type="text" name="firstName" value="${employee.firstName }"> <br>
		last name : <input type="text" name="lastName" value="${employee.lastName }"> <br>
		<input type="submit" value="수정">
	</form>
	
	<form id = "deleteForm1" action="${pageContext.request.contextPath }/Servlet31" method="post">
		<input type="hidden" value="${employee.id }" name="id">
		<input id="deleteButton1" class="btn btn-danger" type="submit" value="삭제">
	</form>  <!-- id 어트리뷰트는 같은 이름 불가능 -->
	
	<script> // 이벤트 명과 코드. 코드는 나중에 일어나야하니까 함수로 넣는다
		document
			.querySelector("#deleteButton1")
			.addEventListener("click", function(e) {
				// event가 더 진행안되게 하는 코드
				e.preventDefault();
				console.log("삭제 서브밋 버튼 클릭됨.");
				console.log("하지만 더이상 진행되지 않도록 함.");
				
				let c = confirm("삭제하시겠습니까?");
				console.log(c);
				
				if (c) { // 위에 c 함수 주는 이유는 그래야 콘솔창에 뜨니까!
					document.querySelector("#deleteForm1").submit();
				}
			});
	</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>











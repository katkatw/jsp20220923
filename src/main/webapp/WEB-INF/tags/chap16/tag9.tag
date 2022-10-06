<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="Map"%>

<div>
	<c:forEach items="${Map }" var= "entry">
		<p>${entry.key } : ${entry.value }</p>
	</c:forEach>
</div>
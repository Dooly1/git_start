<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
<c:when test="${empty user}">
	<script>
		alert("비밀번호 혹은 패스워드가 다릅니다.");
		history.go(-1);
	</script>
</c:when>
<c:otherwise>
	<script>	
		location.href = "/project2/DelivaryController?cmd=base";
		window.opener.location.reload(true);
		window.close(); 		
	</script>
</c:otherwise>
</c:choose>
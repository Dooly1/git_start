<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:formatNumber var="tax" value="${result.l_tax }" type="number"></fmt:formatNumber>
<pre>${result.l_start } 부터 ${result.l_end } 까지 드는 비용은 ${tax}원, 거리 비용은 ${size}원 입니다.</pre>
</body>
</html>
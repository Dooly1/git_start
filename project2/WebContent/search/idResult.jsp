<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
<style type="text/css">
table {
	width: 500px;
	border-collapse: collapse;
}
table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div style="vertical-align: middle; margin: auto; background-color: white">
		<table style="margin: auto; text-align: center;">
			<thead>
				<tr>
					<td>주문번호</td>
					<td>보내는 사람</td>
					<td>받는 사람</td>
					<td>물품</td>
					<td>수량</td>
					<td>보낸 날짜</td>
					<td>받을 날짜(예정)</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${lists}" varStatus="vs">
				<tr>
					<td>${user.odx}</td>
					<td>${user.oname }</td>
					<td>${user.oname_2 }</td>
					<td>${user.product_name }</td>
					<td>${user.list_count}</td>
					<td>${user.odate }</td>
					<td>${user.odate2 }</td>
				</tr>
				</c:forEach>				
			</tbody>
		</table>
	</div>
</body>
</html>
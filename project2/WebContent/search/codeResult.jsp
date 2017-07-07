<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function close() {
	window.close();
}
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
	<div style="vertical-align: middle; margin: auto">
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
				<tr>
					<td>${codeVO.odx}</td>
					<td>${codeVO.oname }</td>
					<td>${codeVO.oname_2 }</td>
					<td>${codeVO.product_name }</td>
					<td>${codeVO.list_count}</td>
					<td>${codeVO.odate }</td>
					<td>${codeVO.odate2 }</td>
				</tr>
			</tbody>
		</table>
		<input type="button" value="확인" onclick="close()">
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>

<script type="text/javascript">
	function goback() {
		opener.location.href = "/project2/DelivaryController?cmd=base";
		window.close();
	}
</script>
</head>
<body>
	<c:choose>
		<c:when test="${empty oRes}">
			<script>
				alert("업데이트 실패");
				history.go(-1);
			</script>
		</c:when>
		<c:otherwise>
			<div
				style="height: 100%; width: 100%; margin: auto; text-align: center; vertical-align: middle;">
				<table style="margin: auto; text-align: center;">
					<tr>
						<td>주문번호</td>
						<td>${oRes}</td>
					</tr>
					<tr>
						<td>주문물품</td>
						<td>${producted}</td>
					</tr>
					<tr>
						<td>거리비용</td>
						<td>${length}원</td>
					</tr>					
					<tr>
						<td>택배비용</td>
						<td>${tax}원</td>
					</tr>
				</table>
				<input type="button" value="확인" onclick="goback()">
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: auto;
}

tr {
	text-align: center;
	padding: 4px 10px;
	background-color: #f6f6f6;
}

th {
	text-align: center;
	padding: 4px 10px;
	background-color: #B2CCFF;
}
</style>
<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('.useId').click(function() {
			var idx = $(this).find("input").attr("value");
			$.ajax({
				url : "/project2/delivaryControllerDiv06",
				type : "get",
				data : "idx=" + idx,
				dataType : "text",
				success : function() {
					opener.document.getElementById("zip").value = document.getElementById("zip5").value;
					opener.document.getElementById("addr").value = document.getElementById("addr5").value;
					opener.document.getElementById("addr2").value = document.getElementById("addr52").value;
					opener.document.getElementById("send").value = document.getElementById("u_name").value;
					opener.document.getElementById("sendPhone").value = document.getElementById("u_phone").value;
					
					window.close();
				},
				error : function(e) {
					alert(e.responseText);
				}
			});
		});
	});
</script>
</head>
<body>
	<div style="background-color: white;">
		<table>
			<thead>
				<tr>
					<td>아이디</td>
					<td>이름</td>
					<td>주소</td>
					<td>전화번호</td>
					<td>=</td>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty userVo }">
						<tr>
							<td colspan="5">찾는 ID없음</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="i" items="${userVo }">
							<tr>
								<td>${i.u_id}
								<input type="hidden" id="zip5" value="${i.zip}">
								<input type="hidden" id="addr5" value="${i.addr}">
								<input type="hidden" id="addr52"value="${i.addr2}">
								<input type="hidden" id="u_name"value="${i.username}">
								<input type="hidden" id="u_phone"value="${i.phone}">
								</td>
								<td>${i.username}</td>
								<td>${i.addr}</td>
								<td>${i.phone}</td>
								<td style="cursor: pointer;" class="useId">사용하기<input
									type="hidden" value="${i.idx}"></td>
								
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	text-align: center;
}

table {
	margin: auto;
}

thead {
	
}
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00FFFF;
	color: #FF0000;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	$(function() {
		$('.bbsone').click(function() {
			var idx = $(this).find("input").attr("value");
			$('#content').empty();
			$.ajax({
				url : "/project2/delivaryControllerDiv04",
				type : "get",
				data : "idx=" + idx,
				dataType : "html",
				success : function() {
					$('#content').load("others/oneList.jsp");
				},
				error : function() {
					alert("실패");
				}
			});
		});
		$('.paging').click(function() {
			var cPage = $(this).find("input").attr("value");
			$('#content').empty();
			$.ajax({
				url : "/project2/delivaryControllerDiv03",
				type : "get",
				data : "cPage=" + cPage,
				dataType : "html",
				success : function() {
					$('#content').load("others/list.jsp");
				},
				error : function() {
					alert("실패");
				}
			});
		});
	});
</script>
</head>
<body>
	<div style="background-color: white;">
		<table cellpadding="5" cellspacing="0" border="1">
			<thead>
				<tr bgcolor="#99ccff";>
					<td width="50px">번호</td>
					<td width="300px">제목</td>
					<td width="100px">작성자</td>
					<td width="100px">작성일</td>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td colspan="4">현재 목록 없음</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="listed" items="${list}" varStatus="vs">
							<tr>
								<td>${listed.v_idx}</td>
								<td class="bbsone" style="cursor: pointer;"><input type="hidden" id="idx" value = "${listed.v_idx}" />${listed.v_name}</td>
								<td>${listed.v_subject}</td>
								<td>${listed.v_regdate.substring(0,10)}</td>
							</tr>							
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
			<tfoot>
			<tr>				
				<td colspan="3">
					<ol class="paging">
					<c:choose>
						<c:when test="${empty Prev}">
							<li class="disable">이전으로</li>
						</c:when>
						<c:otherwise>
							<li style="cursor: pointer;" class="paging">이전으로<input type="hidden" value="${Prev}"></li>	
						</c:otherwise>
					</c:choose>
					<c:forEach var="paged" items="${pageList}">
						<c:choose>
							<c:when test="${paged == cPage}">
								<li>${paged}</li>
							</c:when>
							<c:otherwise>
								<li style="cursor: pointer;" class="paging">${paged}<input type="hidden" value="${paged}"></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${empty next}">
							<li class="disable">다음으로</li>
						</c:when>
						<c:otherwise>
							<li style="cursor: pointer;" class="paging">다음으로<input type="hidden" value="${next}"></li>	
						</c:otherwise>
					</c:choose>
					</ol>
				</td>
				<td>
					<p>빵상</p>
				</td>
				</tr>
			</tfoot>
		</table>
	</div>
	
</body>
</html>
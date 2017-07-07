<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	$(function() {
		$('#bbsed').click(function() {		
			$.ajax({
				url : "/project2/delivaryControllerDiv03",
				type : "get",
				data : "",
				dataType : "html",
				success : function() {
					$('#content').load("others/list.jsp");
				},
				error : function() {
					alert("실패");
				}
			});
		});		
	})
</script>
<style type="text/css">
</style>
</head>
<body>
	<div align="center" style="background-color: white;">
		<p>
			[<a id = "bbsed" style="cursor: pointer;">공지사항 목록으로</a>]
		</p>
		<form method="post">			
			<table width="500" cellpadding="3" cellspacing="0" border="1">
				<tr align="center">
					<td bgcolor="#99ccff" width="100px">번호</td>
					<td style="text-align: left;">${oneVO.v_idx}</td>
				</tr>
				<tr align="center">
					<td bgcolor="#99ccff">제 목</td>
					<td style="text-align: left;">${oneVO.v_subject}</td>
				</tr>				
				<tr align="center">
					<td colspan="2">${oneVO.v_content}</textarea>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>











<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<style type="text/css"></style>
<script type="text/javascript">
$(function() {
    $("#billChk").click(function() {
       var idx = $(this).find("input").attr("value");
       $.ajax({
          url : "/project2/delivaryControllerDiv05",
          type : "get",
          data : $("#billDetail").serialize(),
          dataType : "text",
          success : function(data) {
              url = "service/billChked.jsp";
              wr = window.open(url, "아이템", "width=500, height=200");
          },
          error : function(){
             alert("실패");
          }         
       });
    });
});

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="billDiv" style="background-color: white;">
		<form id="billDetail">
			<p>
				출발지 <select name="l_start">
					<c:forEach var="hub1" items="${hub}">
						<option value="${hub1.hub_code}">${hub1.hub_name}</option>
					</c:forEach>
				</select>
			</p>
			<p>
				도착지 <select name="l_end">
					<c:forEach var="hub2" items="${hub}">
						<option value="${hub2.hub_code}">${hub2.hub_name}</option>
					</c:forEach>
				</select>
			</p>
			<input type="radio" name="size" value="Small">Small <br>
			<input type="radio" name="size" value="Middle">Middle <br>
			<input type="radio" name="size" value="Large">Large <input
				type="button" value="확인" id="billChk">
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
<style>
.wrapper {
	z-index: 1;
	position: relative;
	height: 380px;
	border: 1px solid;
	border-radius: 5px;
}

.wrapper:after {
	height: 380px;
	z-index: -1;
	position: absolute;
	top: 0;
	left: 0;
	content: "";
	background-image: url("../img/gojarani.png");
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 300px, 300px;
	opacity: 0.3 !important;
	filter: alpha(opacity = 30);
}

.codep{
	font-size: 16px;
	font-weight: bold;
	font-family: nanumgothic, dotum;
	margin-top: 8px;
	text-shadow: -2px -2px 4px lime;
}
.codeinput{
	border-color: lime;
}
</style>

</head>
<body>
	<div class="wrapper">
		<p class="codep" style="margin-left: 100px">운송번호 : <input class="codeinput" type="text" style="width: 300px;" placeholder="운송번호를 입력하세요."></p>
		<p class="codep" style="margin-left: 150px">order번호 : <input class="codeinput" type="text" style="width: 300px;" placeholder="주문번호를 입력하세요."></p>
	</div>
</body>
</html>
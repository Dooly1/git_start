<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#codeSearch {
	z-index: 1;
	position: relative;
	margin: auto;
	width: 80%;
	height: 310px;
	display: table-cell;
	vertical-align: middle;
}

#codeSearch:after {
	width: 80%;
	height: 310px;
	z-index: -1;
	position: absolute;
	top: 0;
	left: 0;
	content: "";
	background-image: url("img/gojarani.png");
	background-repeat: no-repeat;
	background-origin: content-box;
	background-size: 300px, 300px;
	opacity: 0.5 !important;
	filter: alpha(opacity = 50);
}

.codep {
	font-size: 16px;
	font-weight: bold;
	font-family: nanumgothic, dotum;
	text-shadow: -2px -2px 4px lime;
}

.codep span {
	vertical-align: -8%;
}

.codeinput {
	border-color: lime;
}
</style>
<script type="text/javascript">
function code_go(f) {
	var gsWin = window.open('about:blank', 'payviewer',
			'width=500,height=200');
	f.action = "/project2/DelivaryController?cmd=codeSearch";
	f.target = "payviewer";
	f.method = "post";
	f.submit();
}
</script>
</head>
<body>
	<div id="codeSearch" style="background-color: white;">
		<p class="codep" style="margin-left: 80px">
			<span>운송번호 : </span><input id="code1" name="code1" class="codeinput"
				type="text" style="width: 300px;" placeholder="운송번호를 입력하세요.">
		</p>
		<form>
			<p class="codep" style="margin-left: 160px">
				<span>order번호 : </span><input id="code2" name="code2"
					class="codeinput" type="text" style="width: 300px;"
					placeholder="주문번호를 입력하세요.">
			</p>
			<input type="button" value="검색하기" onclick="code_go(this.form)">
		</form>
	</div>
	<div style="vertical-align: bottom; float: right;"></div>
</body>
</html>
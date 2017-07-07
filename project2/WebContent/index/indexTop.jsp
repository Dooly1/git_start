<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="index/indexTop.css"
	media="screen">
<script type="text/javascript">	

</script>
</head>
<body>
	<a href="base.jsp"><img src="img/goja.png"
		style="width: 270px; height: 58px; margin-right: 314px; text-align: left"></img></a>
	<a id="login" class="noned">로그인</a>&nbsp;&nbsp;
	<a id="join" class="noned">회원가입</a>&nbsp;&nbsp;
	<a id="goza" class="noned">고자라니!</a>
	<nav id="topMenu" style="clear: both">
		<ul>
			<li class="topMenuLi"><a class="menuLink">배송조회</a>
				<ul class="submenu">
					<li><a class="submenuLink" id="coded" style="cursor: pointer">운송 번호로 조회하기</a></li>
				</ul></li>
			<li class="topMenuLi"><a class="menuLink">서비스 안내</a>
				<ul class="submenu">
					<li><a class="submenuLink" id="bill" style="cursor: pointer">요금 조회</a></li>
					<li><a class="submenuLink" id="service" style="cursor: pointer;">운송 서비스</a></li>
				</ul></li>
			<li class="topMenuLi"><a class="menuLink">고객 센터</a>
				<ul class="submenu">
					<li><a class="submenuLink" id = "faq" style="cursor: pointer">FAQ</a></li>
					<li><a class="submenuLink" id = "rule" style="cursor: pointer">택배운송약관</a></li>
				</ul></li>

			<li class="topMenuLi"><a class="menuLink">회사 소개</a>
				<ul class="submenu">
					<li><a class="submenuLink" id = "hi" style="cursor: pointer;">인사말</a></li>
					<li><a class="submenuLink" id = "way" style="cursor: pointer;">찾아오시는 길</a></li>
				</ul></li>

			<li class="topMenuLi"><a class="menuLink">게시판</a>
				<ul class="submenu">
					<li><a class="submenuLink" id = "bbs" style="cursor: pointer;">공지사항</a></li>
				</ul></li>
		</ul>
	</nav>
</body>
</html>
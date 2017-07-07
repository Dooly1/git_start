<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="user/join.css"
	media="screen">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<div id="stylized" class="myform">
		<form method="post" name="regform">
			<h1 style="margin-left: 195px">회원정보</h1>
			<p>
				<label>ID <span class="small">아이디</span>
				</label> <span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.u_id}</span>		
			<p>
				<label>PW <span class="small">비밀번호</span>
				</label>  <span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.pwd}</span>		
			<p>
				<label>Name <span class="small">이름</span>
				</label>  <span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.username}</span>
			<p>
				<label>Phone <span class="small">휴대전화</span>
				</label> <span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.phone}</span>
			<p>
				<label>Zip <span class="small">우편번호</span>
				</label> <span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.zip}</span>
			<p>
				<label>Addr <span class="small">주소</span>
				</label> <span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.addr}</span>
			<p>
				<label>Addr2 <span class="small">상세주소</span>
				</label> <span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.addr2}</span>
			<p>
				<label>E-mail <span class="small">이메일</span>
				</label><span style="font-family: nanumgothic; font-size:16px; margin-left: 10px;">${user.email}</span>
			<p>
				<input type="button" value="등록" onclick="reg()" class="sign">
				<input type="reset" value="다시작성" class="sign">
		</form>
	</div>
</body>
</html>
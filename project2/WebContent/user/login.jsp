<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="login.css"
	media="screen">
<script type="text/javascript">
	function login1(f) {
		var u_id = document.getElementById("u_id").value;
		var pwd = document.getElementById("pwd").value;
		if(u_id == ""){	
			alert("아이디를 입력하세요");
		}else if(pwd == ""){
			alert("비밀번호를 입력하세요");
		}
		else if(!(u_id == "" || pwd == "")){ 
			f.action = "/project2/DelivaryController?cmd=login";
			f.submit();
	}
} 
</script>
</head>
<body id="loginform">
	<form name="logform" method="post">
		<div class="login">
			<h1>&nbsp;&nbsp;&nbsp;&nbsp;로그인</h1>
			<div id="contents">
				<div id="left">
					<table>
						<tr>
							<td><input type="text" id="u_id" name="u_id"
								style="margin-left: 1px" /> <br></td>
						</tr>
						<tr>
							<td><input type="password" id="pwd" name="pwd"
								style="margin-left: 1px" /> <br> <input id="loginer"
								type="button" value="로그인" onclick="javascript:login1(this.form)"
								class="btn btn-primary btn-block btn-large" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
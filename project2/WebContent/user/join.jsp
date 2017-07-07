<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="user/join.css"
	media="screen">
<script type="text/javascript">
	function reg() {
		var u_id = document.getElementById("u_id").value;
		var chking = $("#chkingid").text();
		var pwd = document.getElementById("pwd").value;
		var pwd2 = document.getElementById("pwd2").value;
		var username = document.getElementById("username").value;
		var phone = document.getElementById("phone").value;
		var zip = document.getElementById("zip").value;
		var addr = document.getElementById("addr").value;
		var addr2 = document.getElementById("addr2").value;
		if (/.*(?=[^\w]).*/g.test(u_id) == true) {
			alert("id에 특수문자는 사용할 수 없습니다.");
		} else if (u_id.length > 10) {
			alert("id는 10자리 이하로 설정해주세요");
		} else if(/.*(?=(중복이 아닙니다)).*/g.test(chking) == false){
			alert("id가 중복입니다.")
		} else if (pwd.length < 8 || pwd.length > 16) {
			alert("비밀번호는 8자리 이상, 16자리 이하로 설정해주세요");
		} else if (/.*(?=.*\d)(?=.*[A-Za-z]).*/g.test(pwd) == false) {
			alert("비밀번호는 영문자와 숫자를 조합해서 넣어주세요.");
		} else if (pwd != pwd2) {
			alert("비밀번호가 똑같아야 합니다.");
		} else if (username == "") {
			alert("이름을 입력하세요");
		} else if (/(010|011|016|017|019)-?(\d){3,4}-?(\d){4}/g.test(phone) == false) {
			alert("휴대전화번호를 잘못 입력하셨습니다.");
		} else if (/(\d){5}/g.test(zip) == false) {
			alert("우편번호를 입력하지 않으셨습니다.");
		} else if (addr == "") {
			alert("주소를 입력하세요");
		} else if (addr2 == "") {
			alert("상세주소를 입력하세요");
		} else {
			regform.action="/project2/DelivaryController?cmd=joinChk";
			regform.submit();
		}		
	}
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById("zip").value = data.zonecode;
				document.getElementById("addr").value = data.address;
				document.getElementById("addr2").focus();
			}
		}).open();
	}	
	$(function(){
		$('#pwd').keyup(function(){			
			$('#check').text('');
		});		
		$('#pwd2').keyup(function(){
			if($('#pwd').val() != $('#pwd2').val()){
				$('#check').text('');
				$('#check').html("　암호가 일치하지 않음");
			}else{
				$('#check').text('');
				$('#check').html("　암호가 일치함");		
			}
		});
	});
	  $("#u_id").keyup(function() {
			$.ajax({
				url : "/project2/delivaryControllerDiv01",
				type: "get",
				data: "u_id="+$("#u_id").val(), // 서블릿에 넘어가는 파라미터값
				dataType: "text",
				success : function(data) {
					$("#chkingid").html(data);
				},
				error: function() {
					alert("에러");
				},
			});
		});
</script>

</head>

<body>

	<div id="stylized" class="myform">
		<form method="post" name="regform">
			<h1 style="margin-left: 195px">회원가입</h1>
			<p>
				<label>ID <span class="small">아이디</span>
				</label> <input type="text" id="u_id" name="u_id"
					placeholder="id를 입력해주세요"><span id="chkingid" style="font-family: dotum; font-size:11px; color: red;">　삠</span>
			<p>

				<label>PW <span class="small">비밀번호</span>
				</label> <input type="password" id="pwd" name="pwd"><span style="font-family: dotum; font-size:11px; color: red; ">　영문자와 숫자를 조합해주세요(8글자 이상 16글자 이하)</span>
			<p>
				<label>PW2 <span class="small">비밀번호 확인</span>
				</label> <input type="password" id="pwd2" name="pwd2"><span id="check" style="font-family: dotum; font-size:11px; color: red; "></span>
			<p>
				<label>Name <span class="small">이름</span>
				</label> <input type="text" id="username" name="username">
			<p>
				<label>Phone <span class="small">휴대전화</span>
				</label> <input type="text" id="phone" name="phone" placeholder="xxx-xxxx-xxxx">
			<p>
				<label>Zip <span class="small">우편번호</span>
				</label> <input type="text" id="zip" name="zip" readonly="readonly"
					onfocus="this.blur()"><input type="button" value="우편번호"
					class="btngray btn" onclick="openDaumPostcode()" />
			<p>
				<label>Addr <span class="small">주소</span>
				</label> <input type="text" id="addr" name="addr" readonly="readonly"
					onfocus="this.blur()">
			<p>
				<label>Addr2 <span class="small">상세주소</span>
				</label> <input type="text" id="addr2" name="addr2">
			<p>
				<label>E-mail <span class="small">이메일</span>
				</label> <input type="text" name="email">
			<p>
				<input type="button" value="등록" onclick="reg()" class="sign">
				<input type="reset" value="다시작성" class="sign">
		</form>
	</div>
</body>
</html>
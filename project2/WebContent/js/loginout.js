window.onload = function() {
	var loginChk = document.getElementById('login');
	loginChk.addEventListener('click', function(){	
		url = "user/login.jsp";
		wr = window.open(url, "아이디검사", "width=500, height=320");
	})
}
$(function() {
	$('#coded').click(function() {
		$('#content').empty();
		$.ajax({
			url : "search/codeSearch.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("search/codeSearch.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});		
	$('#join').click(function() {
		$('#content').empty();		
		$.ajax({
			url : "user/join.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("user/join.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});	
	$('#hi').click(function() {
		$('#content').empty();
		$.ajax({
			url : "introduce/hi.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("introduce/hi.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});	
	$('#service').click(function() {
		$('#content').empty();
		$.ajax({
			url : "service/moveService.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("service/moveService.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#order').click(function() {
		$('#content').empty();
		$.ajax({
			url : "service/moveService.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("/project2/DelivaryController?cmd=order");		
			},
			error : function(e) {
				alert(e.responseText);
			}
		});		
	});
	$('#bill').click(function() {
		$('#content').empty();		
		$.ajax({
			url : "service/bill.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("/project2/DelivaryController?cmd=order2");		
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#goza').click(function() {
		$('#content').empty();
		$.ajax({
			url : "others/gojaVideo.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("others/gojaVideo.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#faq').click(function() {
		$('#content').empty();
		$.ajax({
			url : "tax/faq.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("tax/faq.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#idCode').click(function() {
		$('#content').empty();
		$.ajax({
			url : "/project2/delivaryControllerDiv07",
			dataType : "text",
			success : function() {
				$('#content').load("search/idResult.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#rule').click(function() {
		$('#content').empty();
		$.ajax({
			url : "tax/rule.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("tax/rule.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#way').click(function() {
		$('#content').empty();
		$.ajax({
			url : "introduce/way.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("introduce/way.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#setting').click(function() {
		$('#content').empty();
		$.ajax({
			url : "user/user_info.jsp",
			dataType : "html",
			success : function() {
				$('#content').load("user/user_info.jsp");
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	});
	$('#logout').click(function() {
		$.ajax({
			url : "/project2/delivaryControllerDiv02",
			type : "get",
			data : "",
			dataType : "html",
			success : function(data) {
				location.href = "base.jsp";
			},
			error : function() {
				alert("로그아웃 실패");
			}
		});
	});
	//공지사항 관련
	$('#bbs').click(function() {		
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
});

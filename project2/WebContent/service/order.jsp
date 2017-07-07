<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML5, CSS3 and JavaScript demo</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById("zip").value = data.zonecode;
				document.getElementById("addr").value = data.address;
				document.getElementById("addr2").focus();
			}
		}).open();
	}
	function openDaumPostcode2() {
		new daum.Postcode({
			oncomplete : function(data) {
				document.getElementById("zip_2").value = data.zonecode;
				document.getElementById("addr_2").value = data.address;
				document.getElementById("addr2_2").focus();
			}
		}).open();
	}
	$(function() {
		$('#idSearcher').click(function() {
			$.ajax({
				url : "/project2/DelivaryController?cmd=idSearch",
				data : "u_id=" + $("#idSearch").val(),
				dataType : "text",
				success : function(data) {
					url = "service/idService.jsp";
					wr = window.open(url, "아이템", "width=500, height=200");
				},
				error : function() {
					alert("에러");
				},
			});
		});
	});
	function submits(f) {
		var product = document.getElementById("product").value;
		var send = document.getElementById("send").value;
		var receive = document.getElementById("receive").value;
		var zip = document.getElementById("zip").value;
		var zip2 = document.getElementById("zip_2").value;
		if (product == "") {
			alert("물품 선택 요망");
		} else if (send == "") {
			alert("보내는 사람 이름 입력 요망");
		} else if (zip == "") {
			alert("보내는 사람 주소 입력 요망");
		} else if (receive == "") {
			alert("받는 사람 이름 입력 요망");
		} else if (zip2 == "") {
			alert("받는 사람 주소 입력 요망");
		} else {
			var gsWin = window.open('about:blank', 'payviewer',
					'width=300,height=300');
			f.action = "/project2/DelivaryController?cmd=orderOk";
			f.target = "payviewer";
			f.method = "post";
			f.submit();
		}
	}
</script>
<style type="text/css">
.areaProduct {
	width: 296px;
}

.short {
	width: 100px;
}

.long {
	width: 206px;
}

.one {
	float: left;
	width: 48%;
	margin-right: 5px;
}

.two {
	width: 48%;
	float: left;
}

#ordered {
	min-height: 450px;
	table-layout: fixed;
}
</style>
</head>
<body>
	<!-- Start your code here -->
	<form method="post">
		<div id="ordered" style="background-color: white;">
			<div class="one">
				<!-- <input type="text" name="searchProduct" placeholder="상품 검색" />
			<button value="search" name="search">search</button>
			<button value="minus" name="minus"><</button>
			<button value="plus" name="plus">></button>

			<textarea rows="5" class="areaProduct"></textarea> -->
				<ul>
					<li>중요처리물품은 500원이 추가됩니다.</li>
					<li>S는 3kg 미만, L은 10kg이상, M은 그 중간을 뜻합니다.</li>
				</ul>
				<select id="product" name="product" size="8">
					<c:forEach var="pro" items="${product}">
						<option value="${pro.product_code}">${pro.product_name}</option>
					</c:forEach>
				</select>
			</div>
			<div class="two">
				<input type="text" name="idSearch" id="idSearch" placeholder="ID 검색" />
				<input type="button" id="idSearcher" value="idSearch">
				<hr style="width: 160px" />
				보내는 사람 : <input type="text" id="send" name="send" class="short">
				<br />PHONE : <input type="text" id="sendPhone" name="sendPhone"
					class="short"> <br> <input type="button"
					onclick="openDaumPostcode()" value="SENDER"> &nbsp;&nbsp;<input
					class="short" id="zip" name="zip" /><br /> <input class="long"
					id="addr" name="addr" /> <br /> <input class="long" id="addr2"
					name="addr2" /><br> 받는 &nbsp;&nbsp;사람 : <input type="text"
					id="receive" name="receive" class="short"> <br />PHONE : <input
					type="text" id="receivePhone" name="receivePhone" class="short">
				<br /> <input type="button" onclick="openDaumPostcode2()"
					value="RECEIVER"> &nbsp;&nbsp;<input class="short"
					id="zip_2" name="zip_2" /> <br /> <input class="long" id="addr_2"
					name="addr_2" /> <br /> <input class="long" id="addr2_2"
					name="addr2_2" /> <br /> <br /> <input type="button"
					onclick="submits(this.form)" value="확인">
			</div>
		</div>
	</form>
	<!-- End your code here -->
</body>
</html>
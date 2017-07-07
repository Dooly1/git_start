<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
.faq {
	width: 480px;
	border-bottom: solid 1px #c4c4c4;
	margin: auto;
}

.faq h3 {
	background: #e9e7e7;
	margin: 0;
	padding: 7px 15px;
	font: bold 120%/100% Arial, Helvetica, sans-serif;
	border: solid 1px #c4c4c4;
	border-bottom: none;
	cursor: pointer;
}

.faq p {
	background: #f7f7f7;
	margin: 0;
	padding: 10px 15px 20px;
	border-left: solid 1px #c4c4c4;
	border-right: solid 1px #c4c4c4;
}

.hidee {
	position: absolute;
	left: -1000%;
	top: 0;
	width: 1px;
	height: 1px;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(".faq p").addClass("hidee");			
		$(".faq_article").click(function() {
			if($(this).next("p").hasClass("hidee")){
				$(this).next("p").removeClass("hidee").addClass("show");	
				$(this).next("p").slideDown(400);
			}
			else{
				$(this).next("p").removeClass("show").addClass("hidee");
				$(this).next("p").slideUp(400);		
			}
		});
	});
</script>
	<div class="faq">
		<h3 class="faq_article">여러분 님이 무엇입니까?</h3>
		<p>님은 바로 사회주의 낙원을 말하는 것입니다 여러분!</p>
		<h3 class="faq_article">아래쪽에 감각이 없으니 어떻게 된거요?</h3>
		<p>총알이 영 좋지 않은 곳을 맞았어요! 선생은 앞으로 아이를 가질 수 없습니다.</p>
		<h3 class="faq_article">전화.. 전화좀 주시오!</h3>
		<p>여긴 택배회사입니다. 전화는 없어요!</p>
		<h3 class="faq_article">에엑따!</h3>
		<p>나 김두한이다!</p>
		<h3 class="faq_article">공산당 할꺼야? 안할꺼야?</h3>
		<p>안하겠소! 닷씨는 안하겠소!</p>
	</div>
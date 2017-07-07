<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function start(){
	location.href = "index.jsp";
}
</script>
</head>
<body onload="start()">
<!-- 
   $(function() {
   $("#new").click(function() {
      $.ajax({
         url : "/project3/MyController02",
         type : "get",
         data :  $("#myform1").serialize(), //serialize vo보내기
         datatype : "text",
         success : function(data) {
            alert("회원가입이 되었습니다.");
            window.close();
         },
         error : function(data) {
            alert("회원가입 실패");
         }            
      });
   });
 -->
</body>
</html>
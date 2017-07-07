<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html style="overflow: auto;">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="index.css" media="screen">

<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<!-- post -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- indexTop -->
<script src = "js/TOP.js"></script>
<script src = "js/loginout.js"></script>

<script type="text/javascript">
	
</script>
<!--  -->
</head>
<body>
	<div id="container">
		<div class="outer">
			<div class="inner">
				<div class="centered">
					<div id="header">
						<c:choose>
							<c:when test="${empty user}">
								<jsp:include page="index/indexTop.jsp"></jsp:include>
							</c:when>
							<c:otherwise>
								<jsp:include page="index/indexUserTop.jsp"></jsp:include>
							</c:otherwise>
						</c:choose>
					</div>
					<div id="content">
						<c:choose>
							<c:when test="${empty page_id}">
									<jsp:include page="index/indexBody.jsp"></jsp:include>
							</c:when>
							<c:otherwise>
								<jsp:include page="${page_id}"></jsp:include>
							</c:otherwise>
						</c:choose>
					</div>
					<div id="footer">
						<jsp:include page="index/indexFoot.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
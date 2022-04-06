<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>밥 꾸르맛</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>

<!-- web icon -->
<link rel="icon" type="image/x-icon" href="/resources/image/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/login.css" rel="stylesheet" />
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<form name="idfindscreen" method="POST">
		<div class="findID">
			<h3>아이디 확인</h3>
		</div>
		<section class="form-search">
			<div class="find-name">
				<label>회원이름</label> <input type="text" name="member_name"
					class="btn-name" placeholder="회원이름"> <br>
			</div>
			<div class="find-phone">
				<label>전화번호</label> <input type="text" onKeyup="addHypen(this);"
					name="member_phone" class="btn-phone" placeholder="숫자'-'없이 입력">
			</div>
			<br>
		</section>
		<div class="findIDPW_btn">
			<input type="button" name="enter" value="찾기" onClick="id_search()">
			<input type="button" name="cancel" value="취소"
				onClick="history.back()">
		</div>
	</form>


</body>
</html>
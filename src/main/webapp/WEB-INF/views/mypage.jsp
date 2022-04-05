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
<link href="/resources/css/mypage.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- 큰 박스 -->
	<div class="clearfix">
		<h2>마이페이지</h2>
		<div class="profile">
			<div class="myicon">
				<img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png">
			</div>
			<div class="myinfo">
				<div class="mb-3">
					<label for="formGroupExampleInput" class="form-label">Example
						label</label> <input type="text" class="form-control"
						id="formGroupExampleInput" placeholder="Example input placeholder">
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput2" class="form-label">Another
						label</label> <input type="text" class="form-control"
						id="formGroupExampleInput2"
						placeholder="Another input placeholder">
				</div>
				<div class="mb-3">
					<label for="formGroupExampleInput3" class="form-label">Another
						label</label> <input type="text" class="form-control"
						id="formGroupExampleInput2"
						placeholder="Another input placeholder">
				</div>
			</div>
			<div class="mybutton">

				<button type="button" class="btn btn-outline-secondary">수정</button>
				<button type="button" class="btn btn-outline-secondary">탈퇴</button>
			</div>
		</div>

		<div class="likeList">
			<a href="/" class="liketext"> 나만의 꾸르맛집 </a>
		</div>

		<div class="myReivew">내가 준 꾸르지수</div>
	</div>

</body>
</html>
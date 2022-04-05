<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
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
<link href="/resources/css/updateForm.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="clearfix">
		<div class="updateinfo">
			<h3>회원정보수정</h3>
			<div class="nick">
				<h5>기본정보</h5>
				<div class="mb-3">
					<label for="formGroupExampleInput" class="form-label">닉네임</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						placeholder="">
				</div>
				<div class="updateicon">
					<img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png">
				</div>
				<div class="updatebutton">
					<label for="exampleColorInput" class="form-label">아이콘 변경</label> <input
						type="color" class="form-control form-control-color"
						id="exampleColorInput" value="#ffce49" title="Choose your color">
				</div>
				<div class="hp">
					<h5>연락처 정보</h5>
					<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">연락처</label>
						<input type="text" class="form-control" id="formGroupExampleInput"
							placeholder="">
						<div class="col-md-6">
							<label for="inputEmail4" class="form-label">Email</label> <input
								type="email" class="form-control" id="inputEmail4">
						</div>
					</div>
					<div class="updateButton">
					<a href="/mypage">
					<input class="btn btn-primary" type="button" value="돌아가기">
					</a>
					<input class="btn btn-primary" type="submit" value="저장하기">
					</div>
				</div>
			</div>



		</div>
	</div>

</body>
</html>
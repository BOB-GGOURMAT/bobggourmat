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
<jsp:include page="navbar.jsp"></jsp:include>
<body>
	<!-- 로그인 정보 다시 입력 -->
	<div class="login info">
		<form action="loginOk" method="POST">
			<div class="join">
				<div class="mb-3">
					<h5>
						<label for="exampleInputPassword1" class="form-label">PASSWORD
						</label>
					</h5>
					<input type="password" class="form-control" name="user_password"
						placeholder="비밀번호를 입력하세요" autofocus required>
				</div>
				<div class="buttonwrapper" align=right>
					<button type="submit" class="btn btn-warning">로그인</button>
				</div>
			</div>
		</form>
	</div>
	<!-- 세션과 입력된 회원정보 일치 여부 확인 -->
		
	<!-- 일치하면 ? 삭제하기 -->
</body>
</html>
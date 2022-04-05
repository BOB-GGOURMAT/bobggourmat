<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>밥 꾸르맛</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<!-- web icon -->
<link rel="icon" type="image/x-icon" href="/resources/image/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/home.css" rel="stylesheet" />
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>
	<!-- Masthead-->
	<header class="masthead" >
		<div class="container position-relative" >
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<div class="text-center text-black">
						<!-- Page heading-->
						<h1 class="mb-5" >FIND YOUR <br> BOB GGOURMAT!</h1>
	<!-- search -->				
	<form class="search" action="https://www.google.com/search" method="GET">
	    <div class="mx-auto mt-5 search-bar input-group mb-3">
	      <input name="q" type="text" class="form-control rounded-pill" placeholder="카테고리 또는 식당 검색" aria-label="Recipient's username" aria-describedby="button-addon2">
	      <div class="input-group-append">
	      </div>
	    </div>
	  </form>
                  </div>
				</div>
			</div>
		</div>
	</header>
	<!-- Icons Grid-->
	<section class="features-icons bg-light text-center">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="bi bi-emoji-smile m-auto text-dark"></i>
						</div>
						<h4>About BobGgourmat</h4>
						<p class="lead mb-0">
							미슐랭 선정 맛집
							합리적인 가격과 훌륭한 맛을 갖춘 식당을 소개
						</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="bi bi-bookmark-heart m-auto text-dark"></i>
						</div>
						<h4>Save your Ggourmat Place</h4>
						<p class="lead mb-0">
						저장하고 비교하세요
						내가 찾은 꿀맛플레이스들을 한눈에 비교
						</p>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="features-icons-item mx-auto mb-0 mb-lg-3">
						<div class="features-icons-icon d-flex">
							<i class="bi bi-hand-thumbs-up m-auto text-dark"></i>
						</div>
						<h4>Rate and Share</h4>
						<p class="lead mb-0">
						당신의 꾸르맛집을 평가하고 후기를 공유하세요
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 h-100 text-center text-lg-start my-auto">
					<ul class="list-inline mb-2">
						<li class="list-inline-item"><a href="https://guide.michelin.com/kr/ko">visit Michelin.com</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="https://guide.michelin.com/kr/ko/restaurants/bib-gourmand">visit Bib Gourmand.com</a></li>
					</ul>
					<p class="text-muted small mb-4 mb-lg-0">&copy; Bob Ggourmat
						2022. All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-end my-auto">
					<div class="list-inline mb-0">
						<img alt="logo"
				src="/resources/image/밥 꾸르맛 노배경.png" width="80" height="80">
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
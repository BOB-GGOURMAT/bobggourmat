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

    <!-- 전체 -->
    <div class="container1">
	<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">My Page</span></h1>
	</div>
	
	<div class="container2">
	   <h2><span class="title">회원정보</span></h2>
	   <div class="myIcon" >
         <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: ${userinfo.user_icon };" width="110px" height="110px">
       </div>
       <ul class="profile">
         <li>닉네임 : ${userinfo.user_nickname}</li>
         <li>이메일 : ${userinfo.user_email}</li>
         <li>전화번호 : ${userinfo.user_phone}</li>
       </ul>
        <button id="myPageBtn1"type="button" class="btn btn-outline-secondary" >회원정보 수정</button>
        <button id="myPageBtn2"type="button" class="btn btn-outline-secondary" >비밀번호 수정</button>
        <button id="myPageBtn3"type="button" class="btn btn-outline-secondary" >탈퇴하기</button>
	</div>
	
	<div class="container3" onclick="location.href ='/saveRes'" style="cursor:pointer;">
	<h4 style=" line-height: 180px; font-weight:bold;">저장한 맛집 보러가기</h4>
	</div>
	
	<div class="container4" onclick="location.href ='/estimateRes'" style="cursor:pointer; line-height: 180px;">
	<h4 style=" line-height: 180px; font-weight:bold; ">평가한 맛집 보러가기</h4>
	</div>

</body>
</html>
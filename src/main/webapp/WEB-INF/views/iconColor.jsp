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
<link href="/resources/css/iconColor.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	<div class="container">
		<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">아이콘 변경</span></h1>
    </div>
	<form action="updateIconOk" method="post">
    <div class="iconForm">
	
	<div class="container1">
	<div class="commentIcon" >
	 <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: #ffce49;">
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="user_icon" id="flexRadioDefault1" value="#ffce49" checked>
    </div>
    </div>
   
    <div class="container1">
    <div class="commentIcon" >
    <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: #489CFF;">
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="user_icon" id="flexRadioDefault1" value=" #489CFF">
    </div>
    </div>
    
    <div class="container1">
    <div class="commentIcon" >
    <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: #BFA0ED;">
    </div>
    <div class="form-check">
	 <input class="form-check-input" type="radio" name="user_icon" id="flexRadioDefault1" value="#BFA0ED">
	</div>
	</div>
    
    <div class="container1">
    <div class="commentIcon" >
    <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: #FFD9EC;">
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="user_icon" id="flexRadioDefault1" value="#FFD9EC">
	</div>
	</div>
    
    <div class="container1">
    <div class="commentIcon" >
    <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: #9FC93C;">
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="user_icon" id="flexRadioDefault1" value="#9FC93C">
	</div>
	</div>
   
   <div class="container1">
    <div class="commentIcon" >
    <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: #FF5A5A;">
    </div>
    <div class="form-check">
    <input class="form-check-input" type="radio" name="user_icon" id="flexRadioDefault1" value="#FF5A5A">
	</div>
	</div>
	
	</div>
    <input type="hidden" name="user_idx" value="${userinfo.user_idx }">
	 <button id="submitBtn" type="submit" class="btn btn-danger " > 변경하기 </button>
	
	</form>

</body>
</html>
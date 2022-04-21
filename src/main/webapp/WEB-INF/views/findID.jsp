<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel="icon" type="image/x-icon" href="/resources/image/favicon.ico"/>
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/findID.css" rel="stylesheet" />
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>
	<div class="container1">
		<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">아이디 찾기</span></h1>
		<div class="container2">
			<form class="container3" action="findIDOk" method="POST">
				<div>
					<p>
						<label>회원이름</label>
						<input type="text" class="form-control" name="user_name" required>
						
						<label>전화번호</label>
						<input type="text" class="form-control" name="user_phone" required>
					</p>
					<p >
						<button type="submit" id="findBtn" class="btn btn-warning">찾기</button>
						<button type="button" id="cancelBtn"onclick="location.href='/findIDPW';" class="btn btn-warning">취소하기</button>
					</p>
	         	</div>
			</form>
		</div>
	</div>
</body>
</html>
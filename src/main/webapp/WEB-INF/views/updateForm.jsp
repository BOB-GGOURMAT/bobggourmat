<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
<link href="/resources/css/updateForm.css" rel="stylesheet" />
<!-- web icon -->
<link rel="icon" type="image/x-icon" href="/resources/image/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/updateForm.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
		<div class="container1">
		 <h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">회원정보 수정</span></h1>
		</div>
		<form id= "updateUserForm" action="updateUserOK" method="post" >
			
			<div class="col-mb-3">
			<h5><label for="inputAddress" class="form-label">닉네임 수정</label> </h5>
			<input name="user_nickname" type="text" class="form-control" id="inputAddress" value=${userinfo.user_nickname }>
			</div>
			<div class="col-mb-3">
				<h5> <label for="inputEmail4" class="form-label">이메일 수정</label>  </h5>
				 <input name="user_email" type="email" class="form-control" id="inputEmail4" value=${userinfo.user_email }>
			</div>
			<div class="col-mb-3">
				<h5><label for="inputAddress2" class="form-label">전화번호 수정</label> </h5>
				<input name="user_phone" type="text" class="form-control" id="inputAddress2" value=${userinfo.user_phone }>
			</div>
			<input type="hidden" name="user_idx"  value="${userinfo.user_idx}">
				<button id="submitBtn" type="submit" class="btn btn-warning">수정완료</button>
		</form>
</body>
</html>
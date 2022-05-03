<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>밥 꾸르맛 회원탈퇴</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<!-- web icon -->
<link rel="icon" type="image/x-icon" href="/resources/image/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/delete.css" rel="stylesheet" />
<!-- 패스워드 일치 여부 확인 -->
<script type="text/javascript">
$(document).ready(function() {
    let result = "${result}";
    if (result == "deleteFail") {
        alert("비밀번호가 틀렸습니다. 다시 확인해주세요");
    }
})
</script>
</head>

<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="container1">
<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">탈퇴하기</span></h1>

<div class="container2">
<img alt="밥 꾸르맛" src="/resources/image/밥 꾸르맛 노배경.png" width="200px" height="200px">
<div class="container3">
<h1>탈퇴를<br/>진행하기 전에 <br/><span style="color: #fb3a2f;">안내사항</span>을 꼭 확인해주세요.</h1>
</div>
 <div class="container4">
 회원탈퇴 완료 시 해당 계정의 모든 정보가 삭제되어 복구가 불가능합니다.<br/>
 회원탈퇴 신청 즉시 모든 서비스가 정지되며 회원 전용 서비스의 이용이<br/>  
 불가능합니다.
 </div>
<form action="deleteOk" method="post" autocomplete="off">
  <div class="container5">
		<input type="password" class="form-control" placeholder="비밀번호를 입력하세요" name="user_password" required>
		<input type="hidden" id="user_idx" name="user_idx" value="${userinfo.user_idx }" /> 
	</div>
		<button type="submit" id="deleteBtn" class="btn btn-danger">탈퇴하기</button>
</form>
<div>
	<button id="homeBtn" class="btn btn-warning " onclick="location.href='/'">홈으로 돌아가기</button>
</div>
</div>
</div>
</body>
</html>
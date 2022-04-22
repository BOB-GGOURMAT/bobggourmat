<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="/resources/css/delete.css" rel="stylesheet" />
<!-- 패스워드 일치 여부 확인 -->
<script type="text/javascript">
$(document).ready(function() {
    var result = "${result}";
    if (result == "deleteFail") {
        alert("비밀번호가 틀렸습니다. 다시 확인해주세요");
    }
})
</script>
</head>

<body>
<form action="deleteOk" method="post" autocomplete="off">

  <div>
		<label for="password">비밀번호</label> 
		<input type="password" id="user_password" name="user_password"  /> 
		<input type="hidden" id="user_idx" name="user_idx" value="${userinfo.user_idx }" /> 
	</div>
	<div>
		<button type="submit">회원탈퇴</button>
	</div>
 	
</form>
<div>
	<button onclick="location.href='/'">홈으로 돌아가기</button>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>회원가입 화면</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<%-- 부트스트랩을 사용하기 위한 준비 시작 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%-- 부트스트랩을 사용하기 위한 준비 끝 --%>
<!-- web icon -->
<link rel="icon" type="image/x-icon" href="/resources/image/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/joinForm.css" rel="stylesheet" />
<script type="text/javascript">      
function checkId() {
   var value = $("#user_id").val();
	if(value!=null && value.length>=4){
   alert("value :" + value);
   $.ajax({
       url: 'idCheck',
       method: 'GET',
       data: {"user_id":value},
       success: function(data){
            if(data == 0){
               console.log("아이디 없음");
               alert("사용하실 수 있는 아이디입니다.");
            }else{
               console.log("아이디 있음");
               alert("중복된 아이디가 존재합니다.");
            }
       },
       error: function (){        
            alert('에러입니다.')             
       }
       else{
           alert("아이다가 너무 짧습니다.");
     });
}
 
</script>

<jsp:include page="navbar.jsp"></jsp:include>
 <body>
 <div class="container1">
        <h1><span class="join" style="text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">Join Us!</span>
        </h1>
        <div class="container2">
			<div class="joinForm">
				<form action="insertOk" method="POST">
					<div class="flex">
						<ul class="container">
							<li class="item center">이름</li>
							<li class="item">
							  <input type="text" name="user_name" class="form-control" autofocus required></li>
							<li class="item"></li>
						</ul>

						<ul class="container">
							<li class="item center">닉네임</li>
							<li class="item"> 
							  <input type="text" name="user_nickname" class="form-control" autofocus required></li>
							<li class="item"></li>
						</ul>

						<ul class="container">
							<li class="item center">아이디</li>
							<li class="item">
							  <input type="text" name="user_id" class="form-control" placeholder="아이디를 입력하세요." required></li>
							<li class="item">
								<button type="button" class="btn btn-warning btn-sm" id=db_checkId onclick="checkId();">중복확인</button>
							</li>
						</ul>
						<ul class="container">
							<li class="item center">비밀번호</li>
							<li class="item">
							  <input type="password" name="user_password" class="form-control" placeholder="비밀번호를 입력하세요" required></li>
							<li class="item"></li>
						</ul>
						<ul class="container">
							<li class="item center">비밀번호 확인</li>
							<li class="item">
							 <input type="password" class="form-control" placeholder="비밀번호를 입력하세요" required></li>
							<li class="item"></li>
						</ul>
						<ul class="container">
							<li class="item center">이메일</li>
							<li class="item">
							  <input type="email" name="user_email" class="form-control" placeholder="이메일을 입력하세요" required></li>
							<li class="item"></li>
						</ul>

						<ul class="container">
							<li class="item center">전화번호</li>
							<li class="item">
							  <input type="text" name="user_phone" class="form-control" placeholder="- 없이 입력하세요"></li>
							<li class="item"></li>
						</ul>
						<ul class="container">
							<li class="item center"></li>
							<li class="item">
								<button type="submit" class="btn btn-warning" style="float: right;">가입하기</button>
							</li>
							<li class="item"></li>
						</ul>
					</div>
				</form>
			</div>
		</div>
    </div>
    </body>
</html> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="/resources/css/joinForm.css" rel="stylesheet" />
<script type="text/javascript">
	function checkId() {
		var value = $("#user_id").val();
		if (value != null && value.length >= 4) {
			//alert("value :" + value);
			$.ajax({
				url : 'idCheck',
				method : 'GET',
				data : {
					"user_id" : value
				},
				success : function(data) {
					if (data == 0) {
						console.log("아이디 없음");
						alert("사용하실 수 있는 아이디입니다.");
						$("#formCheck1").val(1);
					} else {
						console.log("아이디 있음");
						alert("중복된 아이디가 존재합니다.");
						$("#formCheck1").val(0);
					}
				},
				error : function() {
					alert("에러입니다.")
				}
			});
		} else {
			alert("아이디가 너무 짧습니다.");
			$("#formCheck1").val(0);
		}
	}

	function formCheckFn() {
		var value = $("#formCheck1").val();
		//alert(value);
		if (value != 1) {
			console.log("중복버튼확인");
			alert("아이디 중복확인 해주세요.");
			return false;
		}
	}

/*	function checkMobile(phoneNum) {
		var regExp =/(01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;
		if(regExp.test(phoneNum)){
			return true;
		} else {
			alert("핸드폰번호")
			return false;
		}
	}*/
</script>
</head>

<jsp:include page="navbar.jsp"></jsp:include>
<body>
	<div class="container1">
		<h1>
			<span class="join"
				style="text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">Join
				Us</span>
		</h1>
		<div class="container2">
			<div class="joinForm">
				<form action="insertOk" method="post"
					onsubmit="return formCheckFn();">
					<div class="flex">
						<div class="container">
							<label for="user_name" class="item center">이름</label>
							<div class="item">
								<input type="text" class="form-control" id="user_name"
									name="user_name" placeholder="이름을 입력하세요" required>
							</div>
							<div class="item"></div>
						</div>

						<div class="container">
							<label for="user_nickname" class="item center">닉네임</label>
							<div class="item">
								<input type="text" class="form-control" id="user_nickname"
									name="user_nickname" placeholder="닉네임을 입력하세요" required>
							</div>
							<div class="item"></div>
						</div>

						<div class="container">
							<label for="user_id" class="item center">아이디</label>
							<div class="item">
								<input type="text" class="form-control" id="user_id"
									name="user_id" placeholder="4글자 이상 입력하세요" required>
							</div>
							<div class="item">
								<button type="button" class="btn btn-warning btn-sm"
									id=db_checkId onclick="checkId();">중복확인</button>
								<input type="hidden" name="formCheck" id="formCheck1" value="0" />
							</div>
						</div>

						<div class="container">
							<label for="user_password" class="item center">비밀번호</label>
							<div class="item">
								<input type="password" name="user_password" id="user_password"
									class="form-control" placeholder="비밀번호를 입력하세요" required>
							</div>
							<div class="item"></div>
						</div>

						<div class="container">
							<label for="user_password" class="item center">비밀번호 확인</label>
							<div class="item">
								<input type="password" class="form-control"
									placeholder="비밀번호를 입력하세요" required>
							</div>
							<div class="item"></div>
						</div>

						<div class="container">
							<label for="user_email" class="item center">이메일</label>
							<div class="item">
								<input type="email" class="form-control" id="user_email"
									name="user_email" placeholder="이메일를 입력하세요" required>
							</div>
							<div class="item"></div>
						</div>

						<div class="container">
							<label for="user_phone" class="item center">전화번호</label>
							<div class="item">
								<input type="text"  maxlength='11' class="form-control" id="user_phone1" name="user_phone"
									placeholder="-없이 입력하세요" required>
							</div>
							<div class="item"></div>
						</div>


						<div class="container">
							<div class="item center"></div>
							<div>
								<input type="submit" class="btn btn-warning btn-sm"
									style="float: right;" value="가입하기">
							</div>
							<div class="item"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

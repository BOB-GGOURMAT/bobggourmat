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
<link href="/resources/css/updatePW.css" rel="stylesheet" />
<script type="text/javascript">

// 비밀번호 변경 후 변경 사실 알리는 alert창
$(document).ready(function() {
    let message = "${msg}";
    if (message != "") {
        alert(message);
        location.href="login";
    }
})
function checkPw(){
	// 로그인되어있는 세션의 비밀번호 & 로그인되어있는 세션의 비밀번호 입력해서 일치 여부 확인할 때
    if(document.getElementById('userPW').value !='' && document.getElementById('userPWCheck').value != ''){
        if(document.getElementById('userPW').value == document.getElementById('userPWCheck').value){
      		document.getElementById('PwCkText').innerHTML='일치'
      		document.getElementById('PwCkText').style.color='blue';
      		$("#formCheck1").val(1);
        }
        else{
            	document.getElementById('PwCkText').innerHTML='불일치'
        		document.getElementById('PwCkText').style.color='red';
            	document.getElementById('userPWCheck').value='';
            	$("#formCheck1").val(0);
        }
    }
}

function check_newPw(){

	  // 새로 설정할 비밀번호가 비밀번호 생성 기준에 맞는지 확인
	  let pw = document.getElementById('newUserPW').value;
 	  let SC = ["!","@","#","$","%"];
 	  let check_SC = 0;

  if(pw.length < 6 || pw.length > 16){
      window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
      document.getElementById("newUserPW").select();
  }
  for(var i=0;i<SC.length;i++){
      if(pw.indexOf(SC[i]) != -1){
          check_SC = 1;
      }
  }
  if(check_SC == 0){
      window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
      document.getElementById("newUserPW").select();
  }
  //새로 설정할 비밀번호 & 새로 설정할 비밀번호 입력해서 일치 여부 확인할 때
  if(document.getElementById('newUserPW').value !='' && document.getElementById('newUserPWCheck').value != ''){
      if(document.getElementById('newUserPW').value == document.getElementById('newUserPWCheck').value){
    		document.getElementById('newPwCkText').innerHTML='일치'
    		document.getElementById('newPwCkText').style.color='blue';
      }
      else{
          	document.getElementById('newPwCkText').innerHTML='불일치'
      		document.getElementById('newPwCkText').style.color='red';
          	document.getElementById('newUserPWCheck').value='';
      }
  }
}
	 
</script>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	<div class="container1">
			<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">비밀번호 수정</span></h1>
	<div class="container2">
	<form action="updatePWOk" method="post">
		<div class="PWcheck">

			<!--로그인한 유저의 비밀번호 -->
			<div class="item">
				<input type="hidden" id="userPW" value="${userinfo.user_password }" onchange="checkPw()" required>
			</div>
			<div class="item"></div>
		</div>
		<!--기존 비밀번호와 일치하는지 확인 -->
		<div class="container3">
			<h5><label for="user_password" class="item center">기존 비밀번호</label></h5>
			<div class="item">
				<input type="password" class="form-control" id="userPWCheck" onchange="checkPw()" required>
			</div>
			<span id="PwCkText"></span>
			<div class="item"></div>
		</div>

		<div class="container3">
			<h5><label for="user_password" class="item center">새 비밀번호</label></h5>
			<div class="item">
				<input type="password" name="user_password" id="newUserPW" class="form-control" onchange="check_newPw()" required>
			</div>
			<div class="item"></div>
		</div>


		<div class="container3">
			<h5><label for="user_password" class="item center">새 비밀번호 확인</label></h5>
			<div class="item">
				<input type="password" class="form-control" id="newUserPWCheck" onchange="check_newPw()" required>
			</div>
			<span id="newPwCkText"></span>
			<div class="item"></div>
		</div>


		<!-- 변경하기버튼 -->
		<button id="submitBtn" type="submit" class="btn btn-warning">변경하기</button>
	</form>
</div>
</div>
</body>
</html>
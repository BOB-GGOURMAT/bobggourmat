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
     });
}
 
</script>

<jsp:include page="navbar.jsp"></jsp:include>
 <body>
 <div class="register">
        <h3>회원가입</h3>
        <form name="join" action="insertOk" method="POST">
            <div class="flex">
                <ul class="container">
                    <li class="item center">
                        이름
                    </li>
                    <li class="item">
                        <input type="text" name="user_name" autofocus required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                
                <ul class="container">
                    <li class="item center">
                        닉네임
                    </li>
                    <li class="item">
                        <input type="text" name="user_nickname" autofocus required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>          
                
                <ul class="container">
                    <li class="item center">
                        아이디
                    </li>
                    <li class="item">
                        <input type="text" name="user_id" placeholder="아이디를 입력하세요." required>
                    </li>
                    <li class="item">
                        <button type="button" id=db_checkId class="idcheck" onclick="checkId();">중복확인</button>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        비밀번호
                    </li>
                    <li class="item">
                        <input type="password" name="user_password" placeholder="비밀번호를 입력하세요." required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        비밀번호 확인
                    </li>
                    <li class="item">
                        <input type="password" placeholder="비밀번호를 입력하세요." required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        이메일
                    </li>
                    <li class="item">
                        <input type="email" name="user_email" placeholder="이메일을 입력하세요." required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                
                <ul class="container">
                    <li class="item center">
                        전화번호
                    </li>
                    <li class="item">
                        <input type="text" name="user_phone" placeholder="휴대전화번호">
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        
                    </li>
                    <li class="item">
                        <button class="submit">가입하기</button>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
            </div>
        </form>
    </div>
    </body>
</html> 
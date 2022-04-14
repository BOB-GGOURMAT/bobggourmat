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
<link href="/resources/css/comment.css" rel="stylesheet" />
<script type="text/javascript">
$()
</script>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>

      <div class="container1">
		<h1><span style="text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">${resinfo.resinfo_name}에 댓글 쓰기</span></h1>
      </div>
      <div class="container2">
          <c:if test="${userinfo ==null }">
            <h3>로그인 후 이용 가능한 서비스 입니다.</h3>
           </c:if>
           
           <c:if test="${userinfo !=null }">
           <c:choose>
            <c:when test="${commentselect.comment_content != null }">
            <form  action="updateOk" method="POST">
               <div class="commentIcon" >
               <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: ${userinfo.user_icon };">
               </div>
            <div class="star">
            <fieldset>
		        <input type="radio" name="comment_star" value="5" id="rate1"><label for="rate1">⭐</label>
		        <input type="radio" name="comment_star" value="4" id="rate2"><label for="rate2">⭐</label>
		        <input type="radio" name="comment_star" value="3" id="rate3"><label for="rate3">⭐</label>
		        <input type="radio" name="comment_star" value="2" id="rate4"><label for="rate4">⭐</label>
		        <input type="radio" name="comment_star" value="1" id="rate5"><label for="rate5">⭐</label>
		    </fieldset>
            </div>
            <input type="text" name="comment_content" class="form-control" placeholder="${commentselect.comment_content }" required>
            <button id="commentBtn"type="submit" class="btn btn-outline-secondary" style="float: right;">수정완료</button>
            <button id="commentBtn"type="button" class="btn btn-outline-secondary" onclick="history.go(-1);" style="float: right;">취소</button>
			<input type="hidden" name="resinfo_idx" value="${resinfo.resinfo_idx }" />
			<input type="hidden" name="user_idx" value="${userinfo.user_idx }" />
			<input type="hidden" name="comment_idx" value="${commentselect.comment_idx }" />
			</form>
			</c:when>
           
             <c:otherwise>
            <form action="commentOk" method="POST">
               <div class="commentIcon" >
               <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: ${userinfo.user_icon };">
               </div>
               
            <div class="star">
            <fieldset  >
		        <input type="radio" name="comment_star" value="5" id="rate1"><label for="rate1">⭐</label>
		        <input type="radio" name="comment_star" value="4" id="rate2"><label for="rate2">⭐</label>
		        <input type="radio" name="comment_star" value="3" id="rate3"><label for="rate3">⭐</label>
		        <input type="radio" name="comment_star" value="2" id="rate4"><label for="rate4">⭐</label>
		        <input type="radio" name="comment_star" value="1" id="rate5"><label for="rate5">⭐</label>
		    </fieldset>
		    </div>
			 <input type="text" name="comment_content" class="form-control" placeholder="${userinfo.user_nickname}님, 오늘 식사는 어떠셨나요?"  required>
            <button id="commentBtn"type="submit" class="btn btn-outline-secondary " style="float: right;">저장</button>
			<button id="commentBtn"type="button" class="btn btn-outline-secondary" onclick="history.go(-1);" style="float: right;">취소</button>
			<input type="hidden" name="resinfo_idx" value="${resinfo.resinfo_idx }" />
			<input type="hidden" name="user_idx" value="${userinfo.user_idx }" />
			</form>
			</c:otherwise>
			</c:choose>
           </c:if>
           </div>
</body>
</html>
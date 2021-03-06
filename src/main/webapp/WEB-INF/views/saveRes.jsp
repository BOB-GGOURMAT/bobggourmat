<%@page import="com.bobggourmat.vo.UserVO"%>
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
<link href="/resources/css/saveRes.css" rel="stylesheet" />
<script type="text/javascript">
function save(resinfo_idx){
    //alert("resinfo_idx:"+resinfo_idx);
	
	 $.ajax({
	    url: 'saveOk',
	    type : 'post',
	    data: {
	    "resinfo_idx" : resinfo_idx
	    },
	    success: function (data){
	        alert("저장이 취소되었습니다.");
	        document.location.reload();
	    },
	    error: function (error){
	        alert("에러");
	    }
	   	}); 
	
		
}
</script>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>
     <div class="saveRes">
	<c:if test="${empty(save_resinfo)}">
	 <img class="NoEstimate" alt="NoEstimate" src="/resources/image/NoSave.png" width="500px" height="500px">
	</c:if>
	<c:if test="${!empty(save_resinfo)}">
	<div class="container1">
	<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">저장한 맛집</span></h1>
	</div>
	<div class="container2">
	<div class="row justify-content-evenly">
	<c:forEach items="${save_resinfo }" var="save_resinfo">
		 <div class="col-5">
		<div class="card">
		  <div class="image">
		  <img alt="식당 메인 사진 " src="${save_resinfo.resinfo_mainphoto}" width="160px" height="160px">
		  </div>
		  <div class="comment_content">
		  <h3> ${save_resinfo.resinfo_name } </h3>  
		  <h5>${save_resinfo.location_name} |
		  <i class="bi bi-star-fill" style="color: #fb3a2f"></i><fmt:formatNumber  pattern="0.0" value="${save_resinfo.resinfo_star}"/>점
		  </h5>
		  </div>
		  <button onclick="location.href='/resinfo?resinfo_idx=${save_resinfo.resinfo_idx }'"  id="button1" class="btn btn-outline-dark">식당 구경하기</button>
		  <button onclick="save('${save_resinfo.resinfo_idx}')" id="button2" class="btn btn-outline-dark">저장취소 <i class="bi bi-bookmark-heart-fill" style="color: #fb3a2f; cursor: pointer;"></i></button>
		</div>
		<br/>
		</div>
	</c:forEach>
        
        </div>
        </div>
	</c:if>
	</div>
</body>
</html>
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
<link href="/resources/css/estimateRes.css" rel="stylesheet" />
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>
     <div class="estimateRes">
	<c:if test="${empty(estimate_resinfo)}">
	 <img class="NoEstimate" alt="NoEstimate" src="/resources/image/NoEstimate.png" width="500px" height="500px">
	</c:if>
	<c:if test="${!empty(estimate_resinfo)}">
	<div class="container1">
	<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">평가한 맛집</span></h1>
	</div>
	<div class="container2">
	<div class="row justify-content-evenly">
	<c:forEach items="${estimate_resinfo }" var="estimate_resinfo">
		 <div class="col-5">
		<div class="card">
		  <div class="image">
		  <img alt="식당 메인 사진 " src="${estimate_resinfo.resinfo_mainphoto}" width="160px" height="160px">
		  </div>
		  <div class="comment_content">
		  <h3> ${estimate_resinfo.resinfo_name } </h3>  
		  <h5>${estimate_resinfo.location_name} |
		  <i class="bi bi-star-fill" style="color: #fb3a2f"></i><fmt:formatNumber  pattern="0.0" value="${estimate_resinfo.comment_star}"/>점
		  </h5>
		  <span class="time">평가한 날짜: ${estimate_resinfo.comment_time } </span>
		  <div class="content">
		   ${estimate_resinfo.comment_content }
		  </div>
		  </div>
		 <button onclick="location.href='/resinfo?resinfo_idx=${estimate_resinfo.resinfo_idx }'"  id="button" class="btn btn-outline-dark btn-sm">식당 구경하기</button>
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
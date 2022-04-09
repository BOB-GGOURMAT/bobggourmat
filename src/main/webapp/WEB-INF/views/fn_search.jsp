<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색화면</title>
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
<link href="/resources/css/fn_search.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- 큰박스 -->
	<div class="clearfix">

		<div class="searchList">
			<div class="res">
				<form class="search" action="fn_search" method="post" name="db_search">
	    <div class="mx-auto mt-5 search-bar input-group mb-3">
	      <input name="keyword" type="text" value="" class="form-control rounded-pill" placeholder="지역, 카테고리 또는 식당 검색" aria-label="Recipient's username" aria-describedby="button-addon2">
	      <div class="input-group-append">
	      </div>
	    </div>
	  </form>
				<h3 class="p-3">
					<img alt="로고" src="/resources/image/밥 꾸르맛.png" width="40px"
						height="40px"> ${keyword}맛집
						
				</h3>
				<c:if test="${!empty fn_search }">
				<div class="container overflow-hidden">
					<div class="row gy-5">
						<c:forEach items="${fn_search}" var="vo">
							<div class="col-lg-3">
								<div class="card" style="width: 18rem;">
									<img src="${vo.resinfo_mainphoto}"
										class="card-img-top" alt="식당사진" height="260px"/>
									<div class="card-body">
										<h5 class="card-title">${vo.resinfo_name}</h5>
										<p class="card-text">${vo.category_name}/ 
											${vo.location_name}</p>
										<h5 class="star" style="color: orange">별점 표시될 곳</h5>
										<br /> 
										<a href="/resinfo?resinfo_idx=${vo.resinfo_idx }">
										<button type="button" class="btn btn-outline-dark btn-sm">식당 구경하기</button>
										</a>
									</div>
								</div>
							</div>
						</c:forEach>
				</div>
				</div>
					</c:if>
					<c:if test="${empty fn_search }">
					 <img class="NoData"alt="NoData" src="/resources/image/NoData.png">
					</c:if>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색화면</title>
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
<link href="/resources/css/fn_search.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- 큰박스 -->
	<div class="clearfix">
	<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">'${keyword }' 검색 결과</span></h1>
		<div class="searchList">
	<form class="search" action="fn_search" method="post" name="db_search">
	    <div class="search-bar">
	      <input name="keyword" type="text" value=""class="form-control rounded-pill" placeholder="지역, 카테고리 또는 식당 검색" aria-label="Recipient's username" aria-describedby="button-addon2">
	    </div>
	  </form>
				
				<c:if test="${!empty fn_search }">
				<div class="container1">
					<div class="row row-cols-3">
						<c:forEach items="${fn_search}" var="vo">
							<div class="col">
								<div class="card" style="width: 18rem;">
									<img src="${vo.resinfo_mainphoto}"
										class="card-img-top" alt="식당사진" height="260px"/>
									<div class="card-body">
										<h3 class="card-title">${vo.resinfo_name}</h3>
										<h5 class="card-text">${vo.category_name} | ${vo.location_name}<br/></h5>
										<h4><i class="bi bi-star-fill" style="color: #fb3a2f"></i><fmt:formatNumber  pattern="0.0" value="${vo.resinfo_star}"/>점</h4>
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
					 <img class="NoSearch" alt="NoData" src="/resources/image/NoSearch.png" width="500px" height="500px">
					</c:if>
			</div>
		</div>
</body>
</html>
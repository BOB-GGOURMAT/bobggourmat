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
<link href="/resources/css/category.css" rel="stylesheet" />
<script type="text/javascript">
	function categoryClick(category_idx){
		location.href='category?category_idx='+category_idx;
	}
</script>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>

	<!-- 큰 박스 -->
    <div class="clearfix">
	<!-- 좌측 category 부분 -->
	<div class="container float-left position-fixed w-50">
	<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">CATEGORY</span></h1>
     <div class="row row-cols-4">
    <div class="col">
     	    <a href="javascript:categoryClick('1');">게장</a><br/>
			<a href="javascript:categoryClick('2');">곰탕</a><br/>
			<a href="javascript:categoryClick('3');">냉면</a><br/>
			<a href="javascript:categoryClick('4');">누들</a><br/>
			<a href="javascript:categoryClick('5');">도가니탕</a><br/>
			<a href="javascript:categoryClick('6');">돼지국밥</a><br/>
			<a href="javascript:categoryClick('7');">두부</a><br/>
			<a href="javascript:categoryClick('8');">딤섬</a><br/>
			<a href="javascript:categoryClick('9');">라멘</a><br/>
			<a href="javascript:categoryClick('10');">만두</a><br/>
			<a href="javascript:categoryClick('11');">메밀국수</a><br/>
			<a href="javascript:categoryClick('12');">면</a><br/>
			<a href="javascript:categoryClick('13');">바비큐</a><br/>
			<a href="javascript:categoryClick('14');">베지테리언</a><br/>
			<a href="javascript:categoryClick('15');">불고기</a><br/>
			<a href="javascript:categoryClick('16');">설렁탕</a><br/>
			<a href="javascript:categoryClick('17');">소바</a><br/>
			<a href="javascript:categoryClick('18');">수제비</a><br/>
			<a href="javascript:categoryClick('19');">아시안</a><br/>
			<a href="javascript:categoryClick('20');">야키토리</a><br/>
    </div>
    <div class="col">
      <a href="javascript:categoryClick('21');">우동</a><br/>
			<a href="javascript:categoryClick('22');">육회</a><br/>
			<a href="javascript:categoryClick('23');">이탤리언</a><br/>
			<a href="javascript:categoryClick('24');">이탤리언 컨템퍼러리</a><br/>
			<a href="javascript:categoryClick('25');">족발</a><br/>
			<a href="javascript:categoryClick('26');">중식</a><br/>
	        <a href="javascript:categoryClick('27');">추어탕</a><br/>
			<a href="javascript:categoryClick('28');">칼국수</a><br/>
			<a href="javascript:categoryClick('29');">타이</a><br/>
			<a href="javascript:categoryClick('30');">한식</a><br/>
    </div>
    
  </div>
  </div>
		

   <!-- 우측 식당 표시 부분 -->	
	<c:choose>
	<c:when test="${fn:contains(category_name ,'0')}">
	   <img class="SelectCategory"alt="SelectCategory" src="/resources/image/SelectCategory.png">
	</c:when>
	<c:when test="${fn:contains(category_name ,'nodata')}">
	   <img class="NoData"alt="NoData" src="/resources/image/NoData.png">
	</c:when>
	<c:otherwise>
		<div class="res">
		<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">
		${category_name} 맛집 </span></h1>
		<div class="container overflow-hidden">
		<div class="row gy-5">
		<c:forEach items="${category_reslist}" var="category_reslist">
        <div class="col-6">
	   		 <div class="card" style="width: 18rem;">
		  			<img src="${category_reslist.resinfo_mainphoto}" class="card-img-top" alt="식당사진"  height="260px">
		  		<div class="card-body">
		    		<h5 class="card-title">${category_reslist.resinfo_name}</h5>
		    		<p class="card-text">지역 : ${category_reslist.location_name}</p>
		    		<h5 class="star" style="color: #fb3a2f">
		    		 <c:if test="${category_reslist.resinfo_star == 0}">
                     <i class="bi bi-star-fill" style="color: #fb3a2f"></i>0.0(평가 전)
                    </c:if>
                    <c:if test="${category_reslist.resinfo_star != 0}">
                    <fmt:formatNumber pattern="##.#" ><i class="bi bi-star-fill" style="color: #fb3a2f"></i>${category_reslist.resinfo_star}</fmt:formatNumber>
                    </c:if> 
                    </h5><br/>
		    		<a href="/resinfo?resinfo_idx=${category_reslist.resinfo_idx }"><button type="button" class="btn btn-outline-dark btn-sm">식당 구경하기</button></a>
		   		</div>
	   		</div>
        </div>
        </c:forEach>
        </div>
        </div>
        </div>
	</c:otherwise>
    </c:choose>
        </div>
</body>
</html>
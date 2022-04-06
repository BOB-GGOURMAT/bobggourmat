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
<link href="/resources/css/resinfo.css" rel="stylesheet" />
<script type="text/javascript">
//
var i = 0;
$('i').on('click',function(){
    if(i==0){
        $(this).attr('class','bi bi-bookmark-heart-fill');
        i++;
    }else if(i==1){
        $(this).attr('class','bi bi-bookmark-heart');
        i--;
    }

});

function clip(){

	var url = '';
	var textarea = document.createElement("textarea");
	document.body.appendChild(textarea);
	url = window.document.location.href;
	textarea.value = url;
	textarea.select();
	document.execCommand("copy");
	document.body.removeChild(textarea);
	alert("URL이 복사되었습니다.")
}
</script>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>
      <div class="clearfix">
      <div class="container1">
         <div class="mainphoto">
            <img alt="식당 메인사진" src="${resinfo.resinfo_mainphoto}" >
            <img alt="식당 서브사진1" src="${resinfo.resinfo_subphoto1}">
            <img alt="식당 서브사진2" src="${resinfo.resinfo_subphoto2}">
         </div>
         <div class="info">
                <ul>
                    <li class="resinfo_name" >
                    <h3 style="font-weight:500;"> ${resinfo.resinfo_name }
                    <span class="resinfoStar" style="color: #fb3a2f; float: right;">
                     <c:if test="${resinfo.resinfo_star == 0}">
                     <i class="bi bi-star-fill" style="color: #fb3a2f"></i>0.0(평가 전)
                    </c:if>
                    <c:if test="${resinfo.resinfo_star != 0}">
                    <fmt:formatNumber  pattern="##.#" ><i class="bi bi-star-fill" style="color: #fb3a2f"></i>${resinfo.resinfo_star}</fmt:formatNumber>
                    </c:if> </span> </h3>
                    </li>
                    <li>
                    <hr/>
                    <p class="resinfo_address"><i class="bi bi-geo-alt-fill" style="color:#fb3a2f"></i >  ${resinfo.resinfo_address }</p>
                    <p class="resinfo_tel"><i class="bi bi-telephone-fill" style="color:#fb3a2f"></i>  ${resinfo.resinfo_tel }</p>
                    <p class="category_name"><i class="bi bi-tags-fill" style="color:#fb3a2f"></i>  ${resinfo.category_name }</p>
                    </li>
                </ul>
         </div>
         </div>
         
         <div class="container2">
         <div class="review">
               <h4 style="font-weight:500;">미쉐린 가이드 서울 2022
               <img alt="미쉐린 아이콘" src="/resources/image/michelin.png" width="35px" height="35px"> 
               </h4><hr style="color: gray"/> “${resinfo.resinfo_review} ”
        </div> 
        </div>      
        
         <div class="container3">
        <div class="menu">
		<h4>메뉴정보 
		<c:if test="">
		<button type="button" class="btn btn-outline-dark btn-sm" style="float: right;">더보기</button>
		</c:if>
		</h4><hr/>
		<ul class="list">
		<c:forEach items="${menuinfo}" var="menuinfo">
			<li>
				<span class="menu_name" >${menuinfo.menu_name}</span>
				<span class="menu_price">${menuinfo.menu_price}원</span><br/>
			</li>
		</c:forEach>	
		</ul>
		</div>
         </div>
         
         <div class="container4">
         <div class="comment">
            <h4>COMMENTS (${comment_count})<button type="button" class="btn btn-outline-dark btn-sm" style="float: right;">더보기</button></h4><hr/>
            <div class=myComment>
            <div class="mb-3">
			  <label for="exampleFormControlTextarea1" class="form-label"></label>
			  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
			</div>
			<c:if test="${ userinfo ==null }">
			<button type="button" class="btn btn-outline-secondary">저장</button>
			</c:if>
			<c:if test="${ userinfo !=null }">
			<button type="button" class="btn btn-outline-secondary">삭제</button>
			</c:if>
			</div>
            </div>
			<div class="commentList">
			<ul class="list">
			<c:forEach items="${comment_list}" var="menuinfo">
				<div class="commentView" >
				  <div class="commentBody">
		    	     <p class="commentDate"> 시간${comment_time}</p>
		    		<span class="commentIcon">아이콘 자리${user_icon}</span>
		    		<span class="commentStar" style="color: orange">별점 표시될 곳</span>
		    		<div class="commentContent">별점 표시될 곳</div>
		    		    <i class="bi-heart" style="font-size:3rem; color: #ffce49 ; cursor: pointer;"></i>
		   		</div>
				</div>
			</c:forEach>	
			</ul>
         </div>
		</div>
		
		<div class="container5">
		 <div id="map" style="width:190px;height:250px;"></div>
		 <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f8b85074dd4520bcdce3ad4f2eb15876"></script>
		<script>
		var mapContainer = document.getElementById('map'), 
	    mapOption = { 
	        center: new kakao.maps.LatLng(${resinfo.resinfo_map }), 
	        level: 4 
	    };
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		var imageSrc = '/resources/image/mapmarker.png', 
		    imageSize = new kakao.maps.Size(64, 69), 
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; 
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
		    markerPosition = new kakao.maps.LatLng(${resinfo.resinfo_map }); 
		var marker = new kakao.maps.Marker({
		    position: markerPosition, 
		    image: markerImage 
		});
		marker.setMap(map);
		</script>
		<a style="margin-left: 43px;" href="https://map.kakao.com/link/to/${resinfo.resinfo_name },${resinfo.resinfo_map }" >
		꾸르맛집 찾아가기 
		<i class="bi bi-box-arrow-right " style="color: #fb3a2f; cursor: pointer;"></i>
		</a>
		</div>
		
		<div class="container6">
		<div class="saveShare">
          <span class="saveShareBtn" ><a href="#" onclick="">저장하기 <i class="bi bi-bookmark-heart" style="color: #fb3a2f; cursor: pointer;"></i></a></span>
          <span class="saveShareBtn" ><a href="#" onclick="clip(); return false;">공유하기<i class="bi bi-share-fill" style="color: #fb3a2f; cursor: pointer;"></i></a></span>
		</div>
     </div>
     </div>
</body>
</html>
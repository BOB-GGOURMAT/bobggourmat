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
<link href="/resources/css/resinfo.css" rel="stylesheet" />
<!-- js 파일 include -->
<script type="text/javascript" src="/resources/js/resinfo.js" ></script> 
<script type="text/javascript">

//식당 저장하기
function save(){
	let user = '<%=(UserVO) session.getAttribute("userinfo")%>';
    let resinfo_idx = '${resinfo.resinfo_idx}';
	if(user == "null"){
	alert("로그인 후 이용 가능합니다.");
	location.href="login";	
	}else {
		 $.ajax({
		    url: 'saveOk',
		    type : 'post',
		    data: {
		    "resinfo_idx" : resinfo_idx
		    },
		    success: function (result){
		    	 alert(result);
		    	 document.location.reload();
		    },
		    error: function (error){
		        alert("에러");
		    }
     	}); 
	}
		
}

//댓글 좋아요
function like(comment_idx){
    let user = '<%=(UserVO) session.getAttribute("userinfo")%>';
	//alert("comment_idx : "+comment_idx);
    if(user=="null"){
	alert("로그인 후 이용 가능합니다.");
	location.href="login";	
	}else{
		 $.ajax({
			    url: 'likeOk',
			    type : 'post',
			    data: {
			    "comment_idx" : comment_idx
			    },
			    success: function (result){
			    	 alert(result);
			    	 document.location.reload();
			    },
			    error: function (error){
			        alert("에러");
			    }
	     	}); 
	}
}

//댓글 삭제
function commentDelete(comment_idx){
	 $.ajax({
		    url: 'commentDeleteOk',
		    type : 'post',
		    data: {
		    "comment_idx" : comment_idx
		    },
		    success: function (result){
		    	 alert(result);
		    	 document.location.reload();
		    },
		    error: function (error){
		        alert("에러");
		    }
  	}); 
	
}

function commentImport(comment_idx){
	let resinfo_idx = '${resinfo.resinfo_idx}';
	location.href='resinfo?resinfo_idx='+resinfo_idx+'&comment_idx='+comment_idx;
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
                    <li class="resinfo_name"  >
                    <h3 style="font-weight:bold;"> ${resinfo.resinfo_name }
                    <span class="resinfoStar" style="color: #fb3a2f; float: right;">
                     <c:if test="${resinfo.resinfo_star == 0}">
                     <i class="bi bi-star-fill" style="color: #fb3a2f"></i>0.0(평가 전)
                    </c:if>
                    <c:if test="${resinfo.resinfo_star != 0}">
                    <i class="bi bi-star-fill" style="color: #fb3a2f"></i><fmt:formatNumber  pattern="0.0" value="${resinfo.resinfo_star}"/>점
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
		<c:if test="${fn:length(menuinfo)>4 }">
		<span id="more" class="btn btn-outline-dark btn-sm" style="float: right;" onclick="more()">더보기</span>
		</c:if>
		<c:if test="${fn:length(menuinfo)<4 }">
		</c:if>
		</h4><hr/>
		</div>
		<ul id="list" class="list">
		<c:forEach items="${menuinfo}" var="menuinfo">
			    <li>
			    <p class="menu_name">
				<span>${menuinfo.menu_name}</span>
				</p>
				<p class="menu_price">${menuinfo.menu_price}</p>
			    </li>                                                                                                                                                                           
		</c:forEach>	
		</ul>
         </div>
         
         <div class="container4">
         <div class="comment">
            <h4>COMMENTS (${commentCount})<span class="btn btn-outline-dark btn-sm" style="float: right;" onclick="commentMore()">더보기</span></h4><hr/>
           <c:if test="${userinfo ==null }">
            <div class="serviceInfo1">로그인 후 이용 가능한 서비스 입니다.</div> 
           </c:if>
           
           <c:if test="${userinfo !=null }">
            <c:if test="${commentselect != null }">
            <form class=myComment action="commentUpdateOk" method="POST">
               <div class="commentIcon1" >
               <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: ${userinfo.user_icon };">
               </div>
               <div class="commentNickname1">
               ${userinfo.user_nickname}
               </div>
            <button id="commentBtn"type="submit" class="btn btn-outline-secondary" style="float: right;">완료</button>
            <button id="commentBtn"type="button" class="btn btn-outline-secondary" onclick="history.go(-1);" style="float: right;">취소</button>
            <div class="star1">
            <fieldset id='star-rating' class='comment_star'>
		        <input type="radio" name="comment_star" value="5" id="rate1"><label for="rate1">⭐</label>
		        <input type="radio" name="comment_star" value="4" id="rate2"><label for="rate2">⭐</label>
		        <input type="radio" name="comment_star" value="3" id="rate3"><label for="rate3">⭐</label>
		        <input type="radio" name="comment_star" value="2" id="rate4"><label for="rate4">⭐</label>
		        <input type="radio" name="comment_star" value="1" id="rate5"><label for="rate5">⭐</label>
		    </fieldset>
            </div>
            <input type="text" name="comment_content" class="form-control" value="${commentselect.comment_content } "autofocus required>
			<input type="hidden" name="comment_idx" value="${commentselect.comment_idx }" />
			<input type="hidden" name="resinfo_idx" value="${resinfo.resinfo_idx }" />
			<input type="hidden" name="user_idx" value="${userinfo.user_idx }" />
			</form>
			</c:if>
           
             <c:if test="${commentselect == null }">
            <form class=myComment action="commentOk" method="POST">
               <div class="commentIcon1" >
               <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: ${userinfo.user_icon };">
               </div>
               <div class="commentNickname1">
               ${userinfo.user_nickname}
               </div>
            <button id="commentBtn"type="submit" class="btn btn-outline-secondary " style="float: right;">저장</button>
            <div class="star">
            <fieldset>
		        <input type="radio" name="comment_star" value="5" id="rate1"><label for="rate1">⭐</label>
		        <input type="radio" name="comment_star" value="4" id="rate2"><label for="rate2">⭐</label>
		        <input type="radio" name="comment_star" value="3" id="rate3"><label for="rate3">⭐</label>
		        <input type="radio" name="comment_star" value="2" id="rate4"><label for="rate4">⭐</label>
		        <input type="radio" name="comment_star" value="1" id="rate5"><label for="rate5">⭐</label>
		    </fieldset>
            </div>
			  <input type="text" name="comment_content" class="form-control" required>
			<input type="hidden" name="resinfo_idx" value="${resinfo.resinfo_idx }" />
			<input type="hidden" name="user_idx" value="${userinfo.user_idx }" />
			</form>
           </c:if>
           </c:if>
			<hr/>
            </div>
			<div class="commentList" id="commentList">
			<c:if test="${empty(commentlist)}">
			 <div class="serviceInfo2"> 댓글이 존재하지 않습니다.</div>
			</c:if>
			<c:if test="${!empty(commentlist)}">
			<c:forEach items="${commentlist}" var="commentlist">
			<div class="commentView" id="commentView">
		      <span class="commentDate"> <fmt:formatDate value="${commentlist.comment_time}" pattern="yyyy년 MM월 dd일" /></span>
		        
		        <c:if test="${commentlist.user_idx != userinfo.user_idx }">
		        <div class="commentLike" >
		        꿀맛(${commentlist.likeCount} )
		        <c:if test="${commentlist.likeCheck==0 }">
		        <a id="likeBtn" onclick="like('${commentlist.comment_idx }')" style="color:#ffce49;"><i class="bi bi-hand-thumbs-up" ></i></a>
		        </c:if>
		        <c:if test="${commentlist.likeCheck!=0 }">
		        <a id="likeBtn" onclick="like('${commentlist.comment_idx }')" style="color:#ffce49;"> <i class="bi bi-hand-thumbs-up-fill"></i></a>
		        </c:if>
		        </div>  
		        </c:if>
		    	
		    	<span class="commentStar"><i class="bi bi-star-fill" style="color: #fb3a2f"></i>${commentlist.comment_star}점</span>
		        <c:if test="${commentlist.user_idx == userinfo.user_idx }">
                 <button id="commentlistBtn2" class="btn btn-outline-secondary btn-sm" onclick="commentDelete('${commentlist.comment_idx }')">삭제</button>
		         <button id="commentlistBtn1" class="btn btn-outline-secondary btn-sm" onclick="commentImport('${commentlist.comment_idx }')">수정</button>
		         </c:if>
		       <div class="commentNickname2">${commentlist.user_nickname}</div>
		    	<div class="commentContent">${commentlist.comment_content}</div>
		       <div class="commentIcon2" >
               <img alt="profile image" src="/resources/image/밥 꾸르맛 노배경.png" style="background-color: ${commentlist.user_icon };">
               </div>
         	</div>
			</c:forEach>	
			</c:if>
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
		  <c:if test="${saveCheck ==0}">
          <span class="saveShareBtn" onclick="save()" style="cursor: pointer;">저장하기<i class="bi bi-bookmark-heart" style="color: #fb3a2f; cursor: pointer;"></i></span>
		  </c:if>
		  <c:if test="${saveCheck !=0}">
          <span class="saveShareBtn" onclick="save()" style="cursor: pointer;">저장취소 <i class="bi bi-bookmark-heart-fill" style="color: #fb3a2f; cursor: pointer;"></i></span>
		  </c:if>
          <span class="saveShareBtn" ><a href="#" onclick="clip(); return false;">공유하기<i class="bi bi-share-fill" style="color: #fb3a2f; cursor: pointer;"></i></a></span>
		</div>
     </div>
     </div>
     </div>
</body>
</html>
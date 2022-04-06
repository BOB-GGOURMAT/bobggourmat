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
<link rel="icon" type="image/x-icon" href="/resources/image/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/map.css" rel="stylesheet" />
<script type="text/javascript">

	function mapClick(img,location_idx){
		$("#mainImg").attr('src','/resources/image/map/'+img);
		location.href='map?location_idx='+location_idx+'&img=' + img;
	}
</script>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>

    <!-- 전체 부분 -->
    <div class="clearfix">
	<!-- 좌측 map 부분 -->
    	<img src="/resources/image/map/${img }" alt="서울특별시" usemap="#Map_Detail" border="0" style="display: inline;" id="mainImg"/>
           <map name="Map_Detail" id="Map_Detail">
              <area shape="poly" code="15" coords="57,161,33,203,68,213,73,207,83,220,92,219,96,206,100,201" href="javascript:mapClick('m001o_12.png','15');" onfocus="blur();" area="서울특별시||강서구" alt="강서구" selimg="/resources/image/map/m001o_12.png" title="강서구">
              <area shape="poly" code="16" coords="71,213,69,238,79,241,91,236,98,242,111,221,107,210,99,209,95,219,85,224" href="javascript:mapClick('m001o_11.png','16');" onfocus="blur();" area="서울특별시||양천구" alt="양천구" selimg="/resources/image/map/m001o_11.png" title="양천구">
              <area shape="poly" code="23" coords="63,250,65,266,85,266,97,252,105,256,117,262,115,252,108,236,100,244,89,240,78,245,69,243" href="javascript:mapClick('m001o_9.png','23');" onfocus="blur();" area="서울특별시||구로구" alt="구로구" selimg="/resources/image/map/m001o_9.png" title="구로구">
              <area shape="poly" code="24" coords="101,259,99,277,114,285,122,299,137,289,128,278,128,272,124,263,111,264" href="javascript:mapClick('m001o_8.png','24');" onfocus="blur();" area="서울특별시||금천구" alt="금천구" selimg="/resources/image/map/m001o_8.png" title="금천구">
              <area shape="poly" code="25" coords="126,260,131,279,144,297,159,294,177,279,171,267,159,267,159,255,142,254" href="javascript:mapClick('m001o_7.png','25');" onfocus="blur();" area="서울특별시||관악구" alt="관악구" selimg="/resources/image/map/m001o_7.png" title="관악구">
              <area shape="poly" code="18" coords="123,258,140,252,151,253,161,254,171,266,172,249,165,238,151,234,141,236" href="javascript:mapClick('m001o_6.png','18');" onfocus="blur();" area="서울특별시||동작구" alt="동작구" selimg="/resources/image/map/m001o_6.png" title="동작구">
              <area shape="poly" code="19" coords="175,266,179,276,196,282,206,277,216,300,238,292,238,271,218,276,209,262,197,251,194,232,174,246" href="javascript:mapClick('m001o_5.png','19');" onfocus="blur();" area="서울특별시||서초구" alt="서초구" selimg="/resources/image/map/m001o_5.png" title="서초구">
              <area shape="poly" code="20" coords="196,229,212,259,217,271,239,268,245,280,261,274,246,253,226,250,226,234,206,222" href="javascript:mapClick('m001o_4.png','20');" onfocus="blur();" area="서울특별시||강남구" alt="강남구" selimg="/resources/image/map/m001o_4.png" title="강남구">
              <area shape="poly" code="21" coords="229,233,233,247,258,260,263,273,286,254,284,246,274,244,275,235,260,226,255,221" href="javascript:mapClick('m001o_3.png','21');" onfocus="blur();" area="서울특별시||송파구" alt="송파구" selimg="/resources/image/map/m001o_3.png" title="송파구">
              <area shape="poly" code="22" coords="259,214,262,225,276,233,288,214,300,210,296,186,271,194,261,199" href="javascript:mapClick('m001o_1.png','22');" onfocus="blur();" area="서울특별시||강동구" alt="강동구" selimg="/resources/image/map/m001o_1.png" title="강동구">
              <area shape="poly" code="14" coords="222,222,237,225,255,210,250,200,248,192,236,192" href="javascript:mapClick('m001o_2.png','14');" onfocus="blur();" area="서울특별시||광진구" alt="광진구" selimg="/resources/image/map/m001o_2.png" title="광진구">
              <area shape="poly" code="4" coords="190,211,195,216,209,214,218,220,229,201,220,198,211,190,201,190,201,201" href="javascript:mapClick('m001o_16.png','4');" onfocus="blur();" area="서울특별시||성동구" alt="성동구" selimg="/resources/image/map/m001o_16.png" title="성동구">
              <area shape="poly" code="8" coords="115,178,133,193,141,200,159,200,162,198,154,185,155,178,125,177" href="javascript:mapClick('m001o_20.png','8');" onfocus="blur();" area="서울특별시||서대문구" alt="서대문구" selimg="/resources/image/map/m001o_20.png" title="서대문구">
              <area shape="poly" code="9" coords="117,174,122,142,126,133,151,119,158,131,159,140,150,146,151,159,145,163,145,167,134,175" href="javascript:mapClick('m001o_22.png','9');" onfocus="blur();" area="서울특별시||은평구" alt="은평구" selimg="/resources/image/map/m001o_22.png" title="은평구">
              <area shape="poly" code="1" coords="190,99,196,108,194,113,195,126,207,124,212,135,218,128,219,107,215,96,196,86" href="javascript:mapClick('m001o_25.png','1');" onfocus="blur();" area="서울특별시||도봉구" alt="도봉구" selimg="/resources/image/map/m001o_25.png" title="도봉구">
              <area shape="poly" code="2" coords="213,140,228,153,252,148,256,136,257,125,244,122,245,96,235,89,218,96,222,106,222,123" href="javascript:mapClick('m001o_19.png','2');" onfocus="blur();" area="서울특별시||노원구" alt="노원구" selimg="/resources/image/map/m001o_19.png" title="노원구">
              <area shape="poly" code="5" coords="231,156,232,175,236,188,248,190,267,169,267,163,258,151" href="javascript:mapClick('m001o_18.png','5');" onfocus="blur();" area="서울특별시||중랑구" alt="중랑구" selimg="/resources/image/map/m001o_18.png" title="중랑구">
              <area shape="poly" code="6" coords="227,162,198,182,198,187,212,189,230,198,234,191" href="javascript:mapClick('m001o_17.png','6');" onfocus="blur();" area="서울특별시||동대문구" alt="동대문구" selimg="/resources/image/map/m001o_17.png" title="동대문구">
              <area shape="poly" code="3" coords="182,100,172,121,173,136,198,156,213,148,206,136,204,130,192,128,192,107" href="javascript:mapClick('m001o_24.png','3');" onfocus="blur();" area="서울특별시||강북구" alt="강북구" selimg="/resources/image/map/m001o_24.png" title="강북구">
              <area shape="poly" code="7" coords="168,141,156,146,152,152,152,164,144,172,158,176,163,191,195,189,181,175,168,169,174,161" href="javascript:mapClick('m001o_21.png','7');" onfocus="blur();" area="서울특별시||종로구" alt="종로구" selimg="/resources/image/map/m001o_21.png" title="종로구">
              <area shape="poly" code="4" coords="173,140,177,161,176,170,187,172,197,181,216,164,227,160,218,151,210,158,195,161" href="javascript:mapClick('m001o_23.png','4');" onfocus="blur();" area="서울특별시||성북구" alt="성북구" selimg="/resources/image/map/m001o_23.png" title="성북구">
              <area shape="poly" code="10" coords="165,193,163,202,181,209,196,203,198,192" href="javascript:mapClick('m001o_15.png','10');" onfocus="blur();" area="서울특별시||중구" alt="중구" selimg="/resources/image/map/m001o_15.png" title="중구">
              <area shape="poly" code="11" coords="107,174,121,187,129,193,138,200,146,202,158,201,159,206,151,216,135,211,114,202,97,188" href="javascript:mapClick('m001o_13.png','11');" onfocus="blur();" area="서울특별시||마포구" alt="마포구" selimg="/resources/image/map/m001o_13.png" title="마포구">
              <area shape="poly" code="12" coords="161,204,152,217,156,230,170,238,190,219,183,212" href="javascript:mapClick('m001o_14.png','12');" onfocus="blur();" area="서울특별시||용산구" alt="용산구" selimg="/resources/image/map/m001o_14.png" title="용산구">
              <area shape="poly" code="17" coords="113,212,110,229,111,238,121,253,146,231,140,218" href="javascript:mapClick('m001o_10.png','17');" onfocus="blur();" area="서울특별시||영등포구" alt="영등포구" selimg="/resources/image/map/m001o_10.png" title="영등포구">
           </map>
	
	<!-- 우측 식당 표시 부분 -->	
	<c:choose>
	<c:when test="${fn:contains(location_name ,'0')}">
	   <img class="SelectLocation"alt="SelectLocation" src="/resources/image/SelectLocation.png">
	</c:when>
	<c:when test="${fn:contains(location_name ,'NoData')}">
	   <img class="NoData"alt="NoData" src="/resources/image/NoData.png">
	</c:when>
	<c:otherwise>
		<div class="res">
		<h1><span style="color:white; text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;">
		${location_name} 맛집</span> </h1>
		<div class="container overflow-hidden">
		<div class="row gy-5">
		<c:forEach items="${location_reslist}" var="location_reslist">
        <div class="col-6">
	   		 <div class="card" style="width: 18rem;">
		  			<img src="${location_reslist.resinfo_mainphoto }" class="card-img-top" alt="식당사진"  height="260px">
		  		<div class="card-body">
		    		<h5 class="card-title">${location_reslist.resinfo_name}</h5>
		    		<p class="card-text">카테고리 : ${location_reslist.category_name}</p>
		    		<h5 class="star" style="color: #fb3a2f">
		    		 <c:if test="${location_reslist.resinfo_star == 0}">
                     <i class="bi bi-star-fill" style="color: #fb3a2f"></i>0.0(평가 전)
                    </c:if>
                    <c:if test="${location_reslist.resinfo_star != 0}">
                    <fmt:formatNumber pattern="##.#" ><i class="bi bi-star-fill" style="color: #fb3a2f"></i>${location_reslist.resinfo_star}</fmt:formatNumber>
                    </c:if> 
                    </h5><br/>
		    		<a href="/resinfo?resinfo_idx=${location_reslist.resinfo_idx }"><button type="button" class="btn btn-outline-dark btn-sm">식당 구경하기</button></a>
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
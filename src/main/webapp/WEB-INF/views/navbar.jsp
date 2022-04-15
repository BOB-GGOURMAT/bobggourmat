<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- Navigation-->
     <nav class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-light"  id="mainNav">
            <div class="container-fluid">
               <a class="navbar-brand" href="/">
              <img alt="logo"
				src="/resources/image/밥 꾸르맛 메인 로고.png" width="180" height="40">
			    </a>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                    	<li class="nav-item mx-0 mx-lg-1"><a class="btn btn-light btn-sm" href="/introduce" role="button">About Us</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="btn btn-light btn-sm" href="/map" role="button">지역</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="btn btn-light btn-sm" href="/category" role="button">카테고리</a></li>
                        <c:if test="${ userinfo ==null }">
                        <li class="nav-item mx-0 mx-lg-1"><a class="btn btn-light btn-sm" href="/joinForm" role="button">회원가입</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="btn btn-light btn-sm" href="/login" role="button">로그인</a></li>
                         </c:if>
                        <c:if test="${ userinfo !=null }">
                        <li class="nav-item mx-0 mx-lg-1"><a class="btn btn-light btn-sm" href="/mypage" role="button">마이페이지</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="btn btn-light btn-sm" href="/logout" role="button">로그아웃</a></li>
                         </c:if>
                         
                    </ul>
                </div>
            </div>
        </nav>
        
			
						
			
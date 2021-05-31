<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PpeonFun</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>


<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/header.css">

<script type="text/javascript">
$(document).ready(function() {
	
	//검색 버튼 클릭
	$("#btnSearch").click(function(){
		searchEnter()
	})
})

//엔터 누르면 검색
function searchEnter(){
	var keyword = $("#keyword").val()
	
	console.log("keyword" + keyword)
	
	if(keyword === ""){
		alert("검색어를 입력하세요")
	} else {
		$(location).attr("href", "/search?keyword=" + keyword)
	}
}
</script>


</head>
<body>
<header>
	<!-- 로고 -->
	<div>
		<a href = "/"><img src="/resources/img/test1.png" width="100" height="40" alt="PpeonFun"  title="PpeonFun"> </a>
	</div>
	
	<ul class="hdropdown">
		<li><a href="#">펀딩하기</a></li>
		<li><a href="#">오픈예정</a></li>
		<li>
			<a href="#">더보기</a>
			<ul>
				<li><a href="#">공지사항</a></li>
				<li><a href="#">게시판</a></li>
			</ul>
		</li>
	</ul>
	
	<!--메인 검색창  -->
<!-- 	<div> -->
<!-- 		<form action="/search" method="get" id ="form" > -->
<!-- 			<input type="text" id="keyword" name="keyword" placeholder="어떤 프로젝트를 찾고 계신가요"/> -->
<!-- 			<button><i class="fas fa-search"></i></button> -->
<!-- 		</form> -->
<!-- 	</div> -->
	
	<!--메인 검색창  -->
	<div>
		<input type="text" id="keyword" onkeypress="if( event.keyCode == 13 ){searchEnter();}"
			placeholder="어떤 프로젝트를 찾고 계신가요"/>
		<button id="btnSearch"><i class="fas fa-search"></i></button>
	</div>
	
	
	<!-- 로그인 -->
	<c:choose>
		<c:when test="${empty mNo }">
			<ul class="hdropdown right">
				<li>
					<a href="#" style="color:black;" class="fa fa-user fa-3x"></a>
					<ul>
						<li><a href="/user/member/loginForm">로그인</a></li>
						<li><a href="/user/member/joinForm">회원가입</a></li>
						<li><a href="#">프로젝트 펀딩하기</a></li>
					</ul>
				</li>
			</ul>	
		</c:when>
		<c:otherwise>
			<ul class="hdropdown right">
				<li>
					<a href="#" class="fa fa-user fa-3x"></a>
					<ul>
						<li><a href="/user/member/logout">로그아웃</a></li>
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">프로젝트 펀딩하기</a></li>
					</ul>
				</li>
			</ul>
		</c:otherwise>
	</c:choose>
</header>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>DirectoryListing</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/assets/img/favicon.ico">
	

<!-- CSS here -->
<link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/assets/css/slicknav.css">
<link rel="stylesheet" href="/resources/assets/css/animate.min.css">
<link rel="stylesheet" href="/resources/assets/css/hamburgers.min.css">
<link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="/resources/assets/css/slick.css">
<link rel="stylesheet" href="/resources/assets/css/nice-select.css">
<link rel="stylesheet" href="/resources/assets/css/style.css">

<style>
td a {
color: black;
}
td a:hover{
color: blue;
}
</style>
</head>
<!--? Preloader Start -->
<div id="preloader-active">
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="preloader-inner position-relative">
			<div class="preloader-circle"></div>
			<div class="preloader-img pere-text">
				<img src="/resources/assets/img/logo/loder.png" alt="">
			</div>
		</div>
	</div>
</div>
<!-- Preloader Start -->
<header>
	<!-- Header Start -->
	<div class="header-area header-transparent">
		<div class="main-header header-sticky">
			<div class="container-fluid">
				<div
					class="menu-wrapper d-flex align-items-center justify-content-between">
					<!-- Logo -->
					<div class="logo">
						<a href="/"><img src="/resources/assets/img/logo/logo.png"
							alt=""></a>
					</div>
					<!-- Main-menu -->
					<div class="main-menu f-right d-none d-lg-block">
						<nav>
							<ul id="navigation">
								<li><a href="/">홈</a></li>
								<li><a href="/travelplace/travelplaceMain">여행지</a></li>
								<li><a href="/course/courseMain">코스</a></li>
								<li><a href="/festival/festivalMain">축제</a></li>
								<li><a href="/board/list">게시판</a></li>
							</ul>
						</nav>
					</div>
					<!-- Header-btn -->

					<c:if test="${member == null}">
						<div class="header-btns d-none d-lg-block f-right">
							<a href="/member/login" class="mr-40"><i class="ti-user"></i>
								Log in</a>
							<button id='regBtn' type="button" class="btn btn-xs pull-right">New
								Join</button>
						</div>
					</c:if>

					<c:if test="${member != null }">
						<div class="header-btns d-none d-lg-block f-right">
							<a href="#" type="button" class="mr-40" id="logoutBtn"><i
								class="ti-user"></i> Log out</a>
							<button id="mypBtn" type="button" class="btn btn-xs pull-right">My
								Page</button>
						</div>
					</c:if>

					<!-- Mobile Menu -->
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->
</header>
	<!--? Hero Start -->
	<div class="slider-area2">
		<div class="slider-height3  hero-overly d-flex align-items-center"
			style='height: 100%;'>
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap2 pt-20 text-center">
							<h2></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<section class="contact-section" style='padding: 0 0 100px;'>
		<div class="container">
			<div class="d-none d-sm-block mb-5 pb-4"></div>	
	
	
	
<h1>관리자 화면</h1>
<div class="row">
<div class="col-lg-12">
<div class="panel panel-default">
<div class="panel-heading">Member Modify Page</div>
<div class="panel-body">

<form role = "form" action = "/admin/modify" method = "post">

<div class="form-group">
<label>UserId</label>
<input class="form-control" name='userId' value='<c:out value="${board.userId}"/>' readonly="readonly">
</div>

<div class="form-group">
<label>UserPass</label>
<input class="form-control" name='userPass' value='<c:out value="${board.userPass}"/>'>
</div>

<div class="form-group">
<label>UserName</label>
<input class="form-control" name='userName' value='<c:out value="${board.userName}"/>'>
</div>

<div class = "form-group">
<label>addr1</label>
<input class = "single-input" name = 'addr1' id = "addr1" placeholder = "Postal Code" value = '<c:out value="${board.addr1}"/>'>
</div>

<div class = "form-group">
<label>addr2</label>
<input class = "single-input" name = 'addr2' id = "addr2" placeholder = "Postal Code" value = '<c:out value="${board.addr2}"/>'>
</div>

<div class = "form-group">
<label>addr3</label>
<input class = "single-input" name = 'addr3' id = "addr3" placeholder = "Postal Code" value = '<c:out value="${board.addr3}"/>'>
</div>

<div class="col-lg-3 col-md-4 mt-sm-30">
								<div class="single-element-widget">
									<div class="genric-btn info"
										onclick="execPostCode();">
										<i class="fa fa-search"></i> Postal Code
									
								</div>
							</div>
							</div>
<br><br>

<button type="submit" data-oper = 'modify' class = "btn btn-default">Modify</button>
<button type="submit" data-oper = 'remove' class = "btn btn-default">Remove</button>
<button type="submit" data-oper = 'list' class = "btn btn-default">List</button>

</form>
</div>
</div>
</div>
</div>

</div>
</section>

<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>
	<!-- JS here -->

	<script src="/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="/resources/assets/js/popper.min.js"></script>
	<script src="/resources/assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="/resources/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="/resources/assets/js/owl.carousel.min.js"></script>
	<script src="/resources/assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="/resources/assets/js/wow.min.js"></script>
	<script src="/resources/assets/js/animated.headline.js"></script>
	<script src="/resources/assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="/resources/assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="/resources/assets/js/jquery.nice-select.min.js"></script>
	<script src="/resources/assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="/resources/assets/js/jquery.counterup.min.js"></script>
	<script src="/resources/assets/js/waypoints.min.js"></script>
	<script src="/resources/assets/js/jquery.countdown.min.js"></script>
	<script src="/resources/assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="/resources/assets/js/contact.js"></script>
	<script src="/resources/assets/js/jquery.form.js"></script>
	<script src="/resources/assets/js/jquery.validate.min.js"></script>
	<script src="/resources/assets/js/mail-script.js"></script>
	<script src="/resources/assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="/resources/assets/js/plugins.js"></script>
	<script src="/resources/assets/js/main.js"></script>

<!-- 도로명주소 관련 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type ="text/javascript" src="/resources/js/validation.js"></script>
<script>

function closeDaumPostcode(){
	
	element_layer.style.display='none'; 
}


function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
        	$("[name=addr1]").val(data.zonecode);
            $("[name=addr2]").val(fullRoadAddr);
           
       	
           
           document.getElementById('addr1').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('addr2').value = fullRoadAddr;
           document.getElementById('addr3').focus();
       }
    }).open();
}




</script>
<!-- /도로명 주소 끝 -->


	<script type="text/javascript">
		$(document).ready(function() {

			// 상단 탭 회원가입 버튼
			$("#regBtn").on("click", function(){
				self.location ="/member/register";
			});
			
			// 상단 mypage 버튼 (로그인 시 활성화)
			$("#mypBtn").on("click", function(){
				self.location ="/mypage/mypageMain";
			});
			
			// 상단 로그아웃 버튼
			$("#logoutBtn").on("click", function(){
				location.href="/member/logout";
			});
		})
	</script>

<script type="text/javascript">
$(document).ready(function(){
	var formObj = $("form");
	
	$('button').on("click", function(e){
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		console.log(operation);
		
		if(operation === 'remove'){
			formObj.attr("action","/admin/remove");
		}else if(operation ==='list'){
			formObj.attr("action","/admin/list").attr("method", "get");
			formObj.empty();
		}
		formObj.submit();
	});
	
});
</script>
</body>
</html>
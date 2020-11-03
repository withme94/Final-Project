<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="/resources/assets/css/compact-gallery.css">
</head>
<body>
	<!--? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
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
                    <div class="menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="/"><img src="/resources/assets/img/logo/logo.png" alt=""></a>
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
                        
                        <!-- 아래 스크립트로 버튼 이용하여 페이지 이동 -->
                        
                        <c:if test="${member == null}">
                        <div class="header-btns d-none d-lg-block f-right">
                        	<a href="/member/login" class="mr-40"><i class="ti-user"></i> Log in</a>
                        	<button id = 'regBtn' type ="button" class ="btn btn-xs pull-right">New Join</button>
                        </div>
                        </c:if>
                        
                        <c:if test="${member != null }">
                        <div class="header-btns d-none d-lg-block f-right">
                        	<a href="#" type ="button" class="mr-40" id="logoutBtn" ><i class="ti-user"></i> Log out</a>
                        	<button id = "mypBtn" type ="button" class ="btn btn-xs pull-right">My Page</button>
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
	<main>
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
		<!-- Hero End -->
		<!--? Blog Area Start-->
		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<div class="col-lg-8 posts-list">
						<div class="single-post">
							<div>
								<h1 style="color: #2d2d2d;">
									<!-- 타이틀 -->
									<strong class="a1"></strong>
								</h1>
								<!-- 지역 정보 -->
								<h4 class="a2"></h4>
							</div>
						</div>
					</div>
					
					<!-- 모달창 띄우는 버튼 -->
					<div class="col-lg-2">
					<c:if test="${member == null }">
					
					</c:if>
					<c:if test="${member != null}">
						<button type="button" class="btn btn-primary" data-toggle="modal"  data-target="#myModal">코스에 담기</button>
					</c:if>
					</div>
					
					<div class="col-lg-2">
					<c:if test="${member == null }">
					
					</c:if>
					<c:if test="${member != null}">
						<form action="/favorInsert" method="post">
							<input type='hidden' id="keyNumber" name="keyNumber" value="${member.userId }<%=request.getParameter("contentid") %>">
							<input type='hidden' id="contentId" name="contentId" value='<%=request.getParameter("contentid") %>'>
							<input type='hidden' id="userId" name="userId" value='${member.userId }'>
							<input type='submit' class="btn btn-primary"id='TestFav' value="즐겨찾기">
						</form>
					</c:if>
					</div>
				</div>
			</div>
		</section>
		
		
		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<div class="a4"></div>
				</div>
			</div>
		</section>
		
		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<div id="map" style="width: 1170px; height: 400px;"></div>
				</div>
			</div>
		</section>		

		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<section class="gallery-block compact-gallery">
						<h2>코스 세부 여행지</h2>
						<div class="row no-gutters" id="a5"></div>
					</section>
				</div>
			</div>
		</section>		

		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<section class="gallery-block compact-gallery">
						<h2>코스 세부 여행지 설명</h2>
						<div class="row no-gutters" id="a6"></div>
					</section>
				</div>
			</div>
		</section>

		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<section class="gallery-block compact-gallery">
						<h2>인근관광지</h2>
						<div class="row no-gutters" id="recommend01"></div>
					</section>
				</div>
			</div>
		</section>

		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<section class="gallery-block compact-gallery">
						<h2>인근축제</h2>
						<div class="row no-gutters" id="recommend02"></div>
					</section>
				</div>
			</div>
		</section>
		
		<section class="contact-section" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4"></div>
				<div class="row border-bottom" >
					<section class="gallery-block compact-gallery">
						<h2>인근코스</h2>
						<div class="row no-gutters" id="recommend03"></div>
					</section>
				</div>
			</div>
		</section>


		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">Modal 제목</h4>
					</div>
					<div class="modal-body">
					<strong><input type="text" value="제목" style="background-color:transparent;border:0 "></strong> 
					<strong><input type="text" value="등록" style="background-color:transparent;border:0 "></strong>
					<hr>
					<div class="a10"></div>

						<div class="col-md-offset-3">
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">
									<li><a class="page-link"
										href="csDetail${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
								</c:if>

								<c:forEach begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}" var="idx">
									<li
										<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
										<a href="csDetail${pageMaker.makeSearch(idx)}" class="page-link">${idx}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
									<li><a class="page-link"
										href="csDetail${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
								</c:if>
							</ul>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- Blog Area End -->
		<!-- Want To work 02-->
		<section class="wantToWork-area">
			<div class="container">
				<div class="wants-wrapper w-padding2">
					<div class="row justify-content-between">
						<div class="col-xl-8 col-lg-8 col-md-7">
							<div class="wantToWork-caption wantToWork-caption2">
								<img src="/resources/assets/img/logo/logo2_footer.png" alt=""
									class="mb-20">
								<p>Users and submit their own items. You can create
									different packages and by connecting with your PayPal or Stripe
									account charge users for registration to your directory portal.</p>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-md-5">
							<div class="footer-social f-right sm-left">
								<a href="#"><i class="fab fa-twitter"></i></a> <a
									href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
								<a href="#"><i class="fab fa-pinterest-p"></i></a> <a href="#"><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Want To work End -->
		<!-- Want To work 01-->
		<section class="wantToWork-area">
			<div class="container">
				<div class="wants-wrapper">
					<div class="row align-items-center justify-content-between">
						<div class="col-xl-7 col-lg-9 col-md-8">
							<div class="wantToWork-caption wantToWork-caption2">
								<div class="main-menu2">
									<nav>
										<ul>
											<li><a href="index.html">Home</a></li>
											<li><a href="explore.html">Explore</a></li>
											<li><a href="pages.html">Pages</a></li>
											<li><a href="blog.html">Blog</a></li>
											<li><a href="contact.html">Contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
						<div class="col-xl-2 col-lg-3 col-md-4">
							<a href="#" class="btn f-right sm-left">Add Listing</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Want To work End -->
	</main>
	<footer>
		<div class="footer-wrapper pt-30">
			<!-- footer-bottom -->
			<div class="footer-bottom-area">
				<div class="container">
					<div class="footer-border">
						<div class="row d-flex justify-content-between align-items-center">
							<div class="col-xl-10 col-lg-9 ">
								<div class="footer-copy-right">
									<p>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
										Copyright &copy;
										<script>
											document.write(new Date()
													.getFullYear());
										</script>
										All rights reserved | This template is made with <i
											class="fa fa-heart" aria-hidden="true"></i> by <a
											href="https://colorlib.com" target="_blank">Colorlib</a>
										<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
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

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d8ff20975ed69aa401f9d41894c959b2"></script>

	<script type="text/javascript">
	
	
	
	
	$(document).ready(function(){
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
		
		var ServiceKey = "hXmWwbs9dyi6bWvj1%2FRc8dpc8rYvTSP8W5fOu%2FNd5NnGXj6wT85pgRQPYvRum7SqbUuSEpeY7cuvl9FBmaYi8Q%3D%3D";
		
		// 제목과 소개를 가져오기 위한 api
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey="+ServiceKey
				+"&contentId="+'<%=request.getParameter("contentid") %>'+"&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTest",
			success:function(data){				
				$(data).find('item').each(function(){					
					var title = $(this).find('title').text();
					var overview = $(this).find('overview').text();			
					var homepage = $(this).find('homepage').text();

					$('.a1').append('<h1>'+title+'</h1>');
					$('.a4').append('<p>'+overview+'</p>');
					});
				}
			});

		
		//지도 나타내기
		var mapx = new Array();
		var mapy = new Array();
		var bounds = new kakao.maps.LatLngBounds();
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = { 
		    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		    level: 3 // 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		var linePath = new Array;
		var linePath2;
		'<c:forEach items="${myList}" var="myList">';
		
		var cno = '${myList.cno}';
		var titlename = '${myList.title}';
		
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?ServiceKey="+ServiceKey
				+"&contentId="+'<%=request.getParameter("contentid") %>'+"&contentTypeId=25&MobileOS=ETC&MobileApp=AppTest",
			async:false,
			success:function(data){
	
				var totalCount = $(data).find('totalCount').text();
				var html = '<form action="/course/insertCCourse" method="post">';

				html +='<input type="text" name="titlename" value="'+titlename+'" style="background-color:transparent;border:0 solid black;">';
				
				for(var i=0; i<totalCount; i++) {
					html += '<input type="hidden" name="placeList['+i+'].cno" value="'+cno+'">';
					html += '<input type="hidden" name="placeList['+i+'].contentId" class="contentId'+i+'" >';
				}
				html += '<input type="submit" value="선택"></form><hr/>';
	
				
				$('.a10').append(html);
				
				$(data).find('item').each(function(){			
					var subcontentid = $(this).find('subcontentid').text();
					var subnum = $(this).find('subnum').text();
					
					$(".contentId"+subnum).attr("value", subcontentid);
	
				});
			}
		});
	
		'</c:forEach> ';
		
		
		
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?ServiceKey="+ServiceKey
					+"&contentId="+'<%=request.getParameter("contentid") %>'+"&contentTypeId=25&MobileOS=ETC&MobileApp=AppTest",
					async:false,
					success:function(data){
						$(data).find('item').each(function(){			
							var subcontentid = $(this).find('subcontentid').text();
							var subnum = $(this).find('subnum').text();
							var subdetailoverview = $(this).find('subdetailoverview').text();
							var subname = $(this).find('subname').text();
						
							$(".contentId"+subnum).attr("value", subcontentid);
							
							$.ajax({
								url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=hXmWwbs9dyi6bWvj1%2FRc8dpc8rYvTSP8W5fOu%2FNd5NnGXj6wT85pgRQPYvRum7SqbUuSEpeY7cuvl9FBmaYi8Q%3D%3D&contentId="+subcontentid+"&MobileOS=ETC&MobileApp=AppTest&defaultYN=Y&addrinfoYN=Y&firstImageYN=Y&areacodeYN=Y&mapinfoYN=Y",
								success:function(data){
									async:false,
									$(data).find('item').each(function() {
										var title = $(this).find('title').text();
										var firstimage = $(this).find('firstimage').text();
										var contentid = $(this).find('contentid').text();
										var mapx = $(this).find('mapx').text();
										var mapy = $(this).find('mapy').text();
										var areacode = $(this).find('areacode').text();
										var sigungucode = $(this).find('sigungucode').text();
									
										
										mapx[subnum] = $(this).find('mapx').text();
									 	mapy[subnum] = $(this).find('mapy').text();	
										
									
									 	
									 	
									 	
										
										var html ='';
										html += '<div class="col-md-5 col-lg-2 item zoom-on-hover">';
										html += '<a href="/detail?contentid='+contentid+'&mapx='+mapx+'&mapy='+mapy+'&areacode='+areacode+'&sigungucode='+sigungucode+'&title='+encodeURIComponent(title)+'" class="lightbox">';
										html += '<img class="img-fluid image" src="'+firstimage+'" style="width:200px; height:160px"></a>';
										html += '<span class="description">';
										html += '<span class="description-heading">'+title+'</span>'
										html += '</span></a></div>';
										$('#a5').append(html);
										
										$('#a6').append('<p>'+subname+' : '+subdetailoverview+'</p>');
									
										var markerPosition  = new kakao.maps.LatLng(mapy, mapx); 
										//마커를 생성합니다
										var marker = new kakao.maps.Marker({
										position: markerPosition
										});
										//마커가 지도 위에 표시되도록 설정합니다
										marker.setMap(map);
										
										linePath2 = new kakao.maps.LatLng(mapy, mapx)
										linePath.push(linePath2);
										$('#cc7').append('<p>라인패스 : '+linePath+'</p>');
										
										var polyline = new kakao.maps.Polyline({
											path: linePath, // 선을 구성하는 좌표배열 입니다
											strokeWeight: 3, // 선의 두께 입니다
											strokeColor: '#FF3333', // 선의 색깔입니다
											strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
											strokeStyle: 'solid' // 선의 스타일입니다
										});
										
										bounds.extend(new kakao.maps.LatLng(mapy, mapx));
										map.setBounds(bounds);
										polyline.setMap(map);
									});	
								}
							});
							
							
						
						});
					}
		});		
		
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey="+ServiceKey
				+"&contentId="+'<%=request.getParameter("contentid") %>'+"&imageYN=Y&MobileOS=ETC&MobileApp=AppTest",
			success:function(data){				
				$(data).find('item').each(function(){					
					var originimgurl = $(this).find('originimgurl').text();	
						$('#a3').append('<img src="'+originimgurl+'" style="width:200px; height:150px;"/>');
					});
				}
			});

		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey="+ServiceKey
				+"&contentId="+'<%=request.getParameter("contentid") %>'+"&contentTypeId=12&MobileOS=ETC&MobileApp=AppTest",
			success:function(data){				
				$(data).find('item').each(function(){					
					var infocenter = $(this).find('infocenter').text();
					var usetime = $(this).find('usetime').text();
					
					if(usetime ===''){
						usetime = "제한시간 없음";
					}
					
					var restdate = $(this).find('restdate').text();
					
					if(restdate ===''){
						restdate = "연중 무휴";
					}
					
					var parking = $(this).find('parking').text();
					
					if(parking ===''){
						parking = "정보 없음";
					}
					
					$('.c2').append('<p>문의 및 안내 : '+infocenter+'</p>');
					$('.c5').append('<p>이용 가능 시간 : '+usetime+'</p>');
					$('.c6').append('<p>휴일 : '+restdate+'</p>');
					$('.c7').append('<p>주차 : '+parking+'</p>');
					});		
				}
			});


		function check01(){
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey="+ServiceKey
				+"&contentTypeId=12&areaCode="+'<%=request.getParameter("areacode") %>'+"&sigunguCode="+'<%=request.getParameter("sigungucode") %>'+"&MobileOS=ETC&MobileApp=AppTest&numOfRows=6&arrange=P",
			success:function(data){
				for(i=0; i<6; i++){
					var tooltip = $('<div class="col-md-5 col-lg-2 item zoom-on-hover">'
							+'<a class="lightbox" id="a'+i+'">'
							+'<img class="img-fluid image" src="http://placehold.it/500x325" style="width:200px; height:160px" id="one'+i+'">'
							+'<span class="description">'
							+'<span class="description-heading" id="title01'+i+'"></span>'
							+'</span>'
		                    +'</a>'
			                +'</div>');
					tooltip.appendTo('#recommend01');
				}
				$(data).find('item').each(function(i){
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var firstimage = $(this).find('firstimage').text();
					var contentid = $(this).find('contentid').text();
					var mapx = $(this).find('mapx').text();
					var mapy = $(this).find('mapy').text();
					var areacode = $(this).find('areacode').text();
					var sigungucode = $(this).find('sigungucode').text();
					
					$("#one"+i).attr("src",firstimage);
					$("#title01"+i).text(title);
					$("#a"+i).attr("href", "/detail?writer=${member.userId}&contentid="+contentid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));
					
				})
			}
		})
		return true;
		}
		check01();


		function check02(){
		$.ajax({
			url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey="+ServiceKey
				+"&contentTypeId=15&areaCode="+'<%=request.getParameter("areacode") %>'+"&sigunguCode="+'<%=request.getParameter("sigungucode") %>'+"&MobileOS=ETC&MobileApp=AppTest&numOfRows=6&arrange=P",
			success:function(data){
				for(i=0; i<6; i++){
					var tooltip = $('<div class="col-md-5 col-lg-2 item zoom-on-hover">'
							+'<a class="lightbox" id="b'+i+'">'
							+'<img class="img-fluid image" src="http://placehold.it/500x325" style="width:200px; height:160px" id="two'+i+'">'
							+'<span class="description">'
							+'<span class="description-heading" id="title02'+i+'"></span>'
							+'</span>'
		                    +'</a>'
			                +'</div>');
					tooltip.appendTo('#recommend02');
				}
				$(data).find('item').each(function(i){
					var title = $(this).find('title').text();
					var addr1 = $(this).find('addr1').text();
					var firstimage = $(this).find('firstimage').text();
					var contentid = $(this).find('contentid').text();
					var mapx = $(this).find('mapx').text();
					var mapy = $(this).find('mapy').text();
					var areacode = $(this).find('areacode').text();
					var sigungucode = $(this).find('sigungucode').text();
					
					$("#two"+i).attr("src",firstimage);
					$("#title02"+i).text(title);
					$("#b"+i).attr("href", "/fesDetail?writer=${member.userId}&contentid="+contentid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));
					
				})
			}
		})
		return true;
		}
		check02();
		
		
		
		function check03(){
			$.ajax({
				url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey="+ServiceKey
					+"&contentTypeId=25&areaCode="+'<%=request.getParameter("areacode") %>'+"&sigunguCode="+'<%=request.getParameter("sigungucode") %>'+"&MobileOS=ETC&MobileApp=AppTest&numOfRows=6&arrange=P",
				success:function(data){
					for(i=0; i<6; i++){
						var tooltip = $('<div class="col-md-5 col-lg-2 item zoom-on-hover">'
								+'<a class="lightbox" id="c'+i+'">'
								+'<img class="img-fluid image" src="http://placehold.it/500x325" style="width:200px; height:160px" id="three'+i+'">'
								+'<span class="description">'
								+'<span class="description-heading" id="title03'+i+'"></span>'
								+'</span>'
			                    +'</a>'
				                +'</div>');
						tooltip.appendTo('#recommend03');
					}
					$(data).find('item').each(function(i){
						var title = $(this).find('title').text();
						var addr1 = $(this).find('addr1').text();
						var firstimage = $(this).find('firstimage').text();
						var contentid = $(this).find('contentid').text();
						var mapx = $(this).find('mapx').text();
						var mapy = $(this).find('mapy').text();
						var areacode = $(this).find('areacode').text();
						var sigungucode = $(this).find('sigungucode').text();
						
						$("#three"+i).attr("src",firstimage);
						$("#title03"+i).text(title);
						$("#c"+i).attr("href", "/csDetail?writer=${member.userId}&contentid="+contentid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));
						
					})
				}
			})
			return true;
			}
			check03();
			
			
			
		
		$('#modal').modal("hide"); //닫기 
		 
		$('#modal').modal("show"); //열기

	});
	</script>

</body>
</html>



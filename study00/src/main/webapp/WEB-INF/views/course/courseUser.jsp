<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<div class="row">
					<div class="col-lg-8 posts-list">
						<div class="single-post">
							<div class="feature-img">
								<img class="img-fluid" src="assets/img/blog/single_blog_1.png"
									alt="">
							</div>
							<div class="blog_details">
								<h1 style="color: #2d2d2d;">
									<strong>사용자가 직접 만든 코스</strong>
								</h1>
								<ul class="blog-info-link mt-3 mb-4">
									<li><a href="">#전체</a></li>
									<li><a href="">#당일여행</a></li>
									<li><a href="">#1박 2일</a></li>
									<li><a href="">#2박 3일 이상</a></li>
									<li><a href="">#아직 이동설정 안함</a></li>
								</ul>
                                 	<c:if test="${member != null}">
															<button type="button" class="btn btn-primary" data-toggle="modal"  data-target="#myModal">코스 생성하기</button>
														</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="blog_area section-padding" style='padding: 0 0 0px;'>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 mb-5 mb-lg-0">
						<div class="blog_left_sidebar">
							<article class="blog_item">
								<section id="container">
									<form role="form" method="get">

										<div class="row text-center">
											<c:forEach items="${list}" var = "list">
												<div class="col-lg-3 col-md-6 mb-4">
													<div class="card h-100">
														<img class="card-img-top"src="http://placehold.it/500x325" alt="">
														<div class="card-body">

															<h4 class="card-title">
																<c:out value="${list.title}" />
															</h4>
															<p class="card-text">
																<c:out value="${list.writer}" />
															</p>
															<p class="card-text">
																<c:out value="${list.cno}" />
															</p>


															<p>
																<a href="#" class="card-text"></a>
															</p>
															<p>
																<a href="#" class="card-text"></a>
															</p>
															<p>
																<a href="#" class="card-text">코스 담으면 readonly처리 하기</a>
															</p>
															<p>
																<a href="#" class="card-text">Lorem ipsum dolor sit
																	amet</a>
															</p>

														</div>
														<div class="card-footer">
															<a href="/course/courseUserDetail?cno=${list.cno }" class='btn btn'>더
																알아보기</a>
															<!-- p.311 -->

														</div>

													</div>

												</div>
											</c:forEach>


										</div>
					<div class="search row">
						<div class="col-xs-2 col-sm-2">
							<select name="searchType" class="form-control">
								<option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
								<option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
								<option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
								<option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
							</select>
						</div>
						 
						<div class="col-xs-10 col-sm-10">
							<div class="input-group">
								<input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" class="form-control"/>
								<span class="input-group-btn">
									<button id="searchBtn" type="button" class="btn btn-default">검색</button> 	
								</span>
							</div>
						</div>
						 
						<script>
							 $(function(){
								 $('#searchBtn').click(function() {
									 self.location = "courseUser" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
								 });
							 });   
						</script>
					</div>
					<div class="col-md-offset-3">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li><a href="courseUser${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
							</c:if> 
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li <c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a href="courseUser${pageMaker.makeSearch(idx)}">${idx}</a></li>
							</c:forEach>
							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a href="courseUser${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
							</c:if> 
						</ul>
					</div>
				</form>
			</section>
			
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">코스 생성하기</h4>
					</div>
					
						<form action="/course/csWriteMain" method="post">
							제목<input type="text" id="title" name="title" value="">
							<input type="hidden" id="content" name="content" >
							<input type="hidden" id="writer" name="writer" value="${member.userId}" readonly="readonly" />
							<input type="hidden" id="tema" name="tema" value=""/>
							<input type="hidden" id="schedule" name="schedule"  value=""/>
							<button class="write_btn" type="submit">작성</button>
						</form>
					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
           
			
							</article>
						</div>
					</div>
				</div>
			</div>
		</section>
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

	<script type="text/javascript">
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

	</script>

</body>
</html>


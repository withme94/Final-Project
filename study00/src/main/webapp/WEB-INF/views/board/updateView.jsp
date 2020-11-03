<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		
		<section class="contact-section" style='padding: 0 0 100px;'>
			<div class="container">
				<div class="d-none d-sm-block mb-5 pb-4">
                </div>
                <div class="row">
                	<div class="col-12">
                        <h2 class="contact-title">게시글 수정</h2>
                    </div>
                    <div class="col-lg-8">
                    	<c:if test="${member.userId != null}">
							<form name="updateForm" role="form" method="post"
								action="/board/update" enctype="multipart/form-data">
								<input type="hidden" name="bno" value="${update.bno}" readonly="readonly" /> 
								<input type="hidden" id="page" name="page" value="${scri.page}"> 
								<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
								<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}">
								<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
								<input type="hidden" id="fileNoDel" name="fileNoDel[]" value=""> 
								<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">
								
								<div class="row">
									<div class="col-sm-12">
	                                    <div class="form-group">
	                                    	<div>제목</div>
	                                        <input type="text" id="title" name="title" class="form-control valid chk" value="${update.title}" />
	                                    </div>
	                                </div>
									
									<div class="col-sm-12">
	                                    <div class="form-group">
	                                    	<div>내용</div>
	                                        <textarea id="content" name="content" class="form-control w-100" rows="9" cols="300" ><c:out value="${update.content}" /></textarea>
	                                    </div>
	                                </div>
	                                
	                                <div class="col-12">
	                                    <div class="form-group">
	                                    	<div>작성자</div>
	                                        <input class="form-control chk" id="writer" name="writer" type="text"  value="${update.writer}" readonly="readonly"/>
	                                    </div>
	                                </div>
	                                
	                                <div class="col-12">
	                                    <div class="form-group">
	                                    	<div>작성날짜</div>
	                                    	<input class="form-control chk" id="regdate"  type="text"  value="<fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd" />" readonly="readonly"/>
	                                    </div>
	                                </div>
	                                <div class="col-10">
	                                    <div class="form-group">
	                                    	<div>파일목록</div>
	                                    	<div id="fileIndex">
		                                    	<div class="form-group" style="border: 1px solid #dbdbdb;">
													<c:forEach var="file" items="${file}">
														<a href="#"
															onclick="fn_fileDown('${file.FILE_NO}'); return false;"
															style="color: black;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
													</c:forEach>
												</div>
											</div>
	                                    </div>
	                                </div>
								</div>

								<div>
									<button type="button" class="update_btn button-contactForm boxed-btn write_btn">수정</button>
                            		<button type="button" class="cancel_btn button-contactForm boxed-btn write_btn">삭제</button>
									<button type="button" class="fileAdd_btn button-contactForm boxed-btn write_btn">파일추가</button>
								</div>
							</form>
                    	</c:if>
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

		$(document)
				.ready(
						function() {
							var formObj = $("form[name='updateForm']");

							$(document).on("click", "#fileDel", function() {
								$(this).parent().remove();
							})

							fn_addFile();

							$(".cancel_btn")
									.on(
											"click",
											function() {
												event.preventDefault();
												location.href = "/board/readView?bno=${update.bno}"
														+ "&page=${scri.page}"
														+ "&perPageNum=${scri.perPageNum}"
														+ "&searchType=${scri.searchType}"
														+ "&keyword=${scri.keyword}";
											})

							$(".update_btn").on("click", function() {
								if (fn_valiChk()) {
									return false;
								}
								formObj.attr("action", "/board/update");
								formObj.attr("method", "post");
								formObj.submit();
							})
						})

		function fn_valiChk() {
			var updateForm = $("form[name='updateForm'] .chk").length;
			for (var i = 0; i < updateForm; i++) {
				if ($(".chk").eq(i).val() == ""
						|| $(".chk").eq(i).val() == null) {
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
		function fn_addFile() {
			var fileIndex = 1;
			//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
			$(".fileAdd_btn")
					.on(
							"click",
							function() {
								$("#fileIndex")
										.append(
												"<div><input type='file' style='float:left;' name='file_"
														+ (fileIndex++)
														+ "'>"
														+ "</button>"
														+ "<button type='button' style='float:right;' id='fileDelBtn'>"
														+ "삭제"
														+ "</button></div>");
							});
			$(document).on("click", "#fileDelBtn", function() {
				$(this).parent().remove();

			});
		}
		var fileNoArry = new Array();
		var fileNameArry = new Array();
		function fn_del(value, name) {

			fileNoArry.push(value);
			fileNameArry.push(name);
			$("#fileNoDel").attr("value", fileNoArry);
			$("#fileNameDel").attr("value", fileNameArry);
		}
	</script>

</body>
</html>
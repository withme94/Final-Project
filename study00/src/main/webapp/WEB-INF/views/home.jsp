<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
	
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>뚜벅뚜벅</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="/resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="/resources/assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="/resources/assets/css/gijgo.css">
    <link rel="stylesheet" href="/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="/resources/assets/css/animated-headline.css">
	<link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/assets/css/slick.css">
	<link rel="stylesheet" href="/resources/assets/css/nice-select.css">
	<link rel="stylesheet" href="/resources/assets/css/style.css">
	
	
	<style>
 .directory-active{



 display : inline;


} 


.directory-active1{



 display : inline;


} 

 .a {
	
	position :relative;
	top : 30px;
	left: 370px;
 
 }

/* .single-services mb-30 {
position :relative;
	left: 370px;

}
 */
	
	</style>
</head>
    
<body>
    <!-- ? Preloader Start -->
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
                        	<button id = 'regBtn' type ="button" class ="btn btn-xs pull-right">Sign Up</button>
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
    <main>
        <!--? Hero Area Start-->
        <div class="slider-area hero-bg1 hero-overly">
            <div class="single-slider hero-overly  slider-height1 d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10 col-lg-10">
                            <!-- Hero Caption -->
                            <div class="hero__caption pt-100">
                                <h1>뚜 벅 뚜 벅 </h1>
                                <p>We can make a new journey in South Korea !</p>
                               <!--  <p class='a'> <a href ='#'><font color ='red' size ='5px'>Info of COVID - 19 </font></a></p> -->
                            </div>
                            <!--Hero form -->
                            <form class="search-box mb-1000" name="Frm" id="Frm" onsubmit="return false">
                                <div class="input-form">
                                    <input type="text" name="search" placeholder="Looking over South Korea!" style='position: absolute; width: 70%;'>
                                    <input type="hidden" name="pageNo" value="1">
                                </div>
                                <div class="search-form">
                                    <a href="javascript:" onclick="goPage();" ><i class="ti-search"></i> Search</a>
                                </div>	
                            </form>	
                            <!-- hero category1 img -->
                          
                            <div class="category-img text-center">
                            <!--     <a href="listing.html"> <img src="/resources/assets/img/gallery/hero_category1.png" alt=""></a>
                                <a href="listing.html"> <img src="/resources/assets/img/gallery/hero_category2.png" alt=""></a>
                                <a href="listing.html"> <img src="/resources/assets/img/gallery/hero_category3.png" alt=""></a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Hero Area End-->
        
        
           <!--    <!--? Our Services Start -->
     <div class="our-services  border-bottom">
            <div class="container">
                <div class="row">
             
                  
                  
                
                        <div class="single-services mb-30">
                         <a href="http://ncov.mohw.go.kr/"><img src="/resources/assets/img/gallery/covid.png" alt=""></a>


                        
                           <!--  <div class="services-ion">
                                <span>01</span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Find Businesses</a></h5>
                                <p>Discover & connect with great local businesses in your local neighborhood like dentists, hair stylists and more.</p>
                            </div> -->
                        </div>
                  
                    <!-- <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <span>02</span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Review Listings</a></h5>
                                <p>Discover & connect with great local businesses in your local neighborhood like dentists, hair stylists and more.</p>
                            </div>
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-6 col-sm-6">
                        <div class="single-services mb-30">
                            <div class="services-ion">
                                <span>03</span>
                            </div>
                            <div class="services-cap">
                                <h5><a href="#">Make a Reservation</a></h5>
                                <p>Discover & connect with great local businesses in your local neighborhood like dentists, hair stylists and more.</p>
                            </div>
                        </div> 
                    </div>  -->
                </div>
            </div>
        </div>  
        <!-- Our Services End -->
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <!--? Popular Locations Start 01-->
        <div class="popular-location border-bottom section-padding40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>Explore top cities in South Korea ! </h2>
                            <p>Imagine your Korea & Meet you up later</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="/resources/assets/img/gallery/seoul3.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Seoul</p>
                                <span class='aa'>
                               <!--  <a href="#" class="location-btn">65 Listing </a> -->
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="/resources/assets/img/gallery/busan3.jpeg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Busan</p>
                                    <span class='bb'>
                               <!--  <a href="search/searchList?search=%EB%B6%80%EC%82%B0&pageNo=1" class="location-btn">60 Listing</a> -->
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="/resources/assets/img/gallery/jeju2.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Jeju</p>
                                     <span class='cc'>
                           <!--      <a href="/search/searchList?search=제주&pageNo=1" class="location-btn">50 <i class="ti-plus"></i> Listing</a> -->
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="/resources/assets/img/gallery/gangneung.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Gangneung</p>
                                    <span class='dd'>
                           <!--      <a href="/search/searchList?search=강릉&pageNo=1" class="location-btn">28 <i class="ti-plus"></i> Location</a> -->
                            </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="/resources/assets/img/gallery/jeonju.jpg" alt="">
                            </div>
                            <div class="location-details">
                                <p>Jeonju</p>
                                     <span class='ee'>
                            <!--     <a href="/search/searchList?search=전주&pageNo=1" class="location-btn">99 <i class="ti-plus"></i> Listing</a> -->
                            </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Popular Locations End -->
        <!--? Popular Directory Start -->
        <div class="popular-directorya-area  border-bottom section-padding40 fix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-80">
                            <h2>걷고 싶은 거리</h2>
                            <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                        </div>
                    </div>
                </div>
                
                <!--test -->
                
               <!--  <div id="recommend01">    </div> -->
                    
                
   <div class="directory-active1">
          
             
                   
                 </div>   
                    
                    
                    
       
                </div>
            </div>
        
        
            <!--? Popular Directory Start -->
   <div class="popular-directorya-area section-padding40 border-bottom fix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        
                        <div class="section-tittle text-center mb-80">
                            <h2>2020년 11월 축제</h2>
                            <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                        </div>
                    </div>
                </div>
                <div class="directory-active2">
            
                   
                        </div>
                    </div>
                </div>
       
        <!-- Popular Locations End -->
        
        
        
        
        
        
        <!--? Popular Directory End -->
        <!--? Want To work 01-->
        <%-- <section class="wantToWork-area">
            <div class="container">
              <div class="wants-wrapper w-padding2">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-xl-7 col-lg-9 col-md-8">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <h2>How it works</h2>
                                <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4">
                            <a href="#" class="btn f-right sm-left">Explore Listing</a>
                        </div>
                    </div>
                </div> 
            </div>
        </section> --%>
        <!-- Want To work End -->
        
  
    
        <!--? Want To work 02-->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper w-padding2">
                    <div class="row justify-content-between">
                        <div class="col-xl-8 col-lg-8 col-md-7">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <img src="/resources/assets/img/logo/logo2_footer.png" alt="" class="mb-20">
                                <p> You can create different journey in South Korea with us. <br>
                                Press the button and feel the rhythm of Korea and We hope to meet you up soon!</p>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-5">
                            <div class="footer-social f-right sm-left">
                              <!--   <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> 
        <!-- Want To work End -->
        <!--? Want To work 01-->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-xl-7 col-lg-9 col-md-8">
                            <div class="wantToWork-caption wantToWork-caption2">
                                <div class="main-menu2">
                                    <nav>
                                        <ul>
                                            <li><a href="/">홈</a></li>
                                            <li><a href="/recommend/recommendMain">추천</a></li> 
                                            <li><a href="/travelplace/travelplaceMain">여행지</a></li>
                                            <li><a href="/course/courseMain">코스</a></li>
                                             <li><a href="/festival/festivalMain">축제</a></li>
                                            <li><a href="/board/list">게시판</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4">
                       <button id = 'regBtn' type ="button" class ="btn btn-xs pull-right">Sign Up</button>
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
                                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> | This Project is made by Group of PGS
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
        
        
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->

    <script src="/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
 <script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
 
  
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
    <!-- Progress -->
    <script src="/resources/assets/js/jquery.barfiller.js"></script>
    
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

    </body>
    	  <script src="/resources/js/api.js"></script>
    
  <script type="text/javascript">
		$("#regBtn").on("click", function(){
			self.location ="/member/register";
		});
		
		$("#mypBtn").on("click", function(){
			self.location ="/mypage/mypageMain";
		});
		
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		
		function goPage() {
			var f = document.Frm;
			
			f.action = "/search/searchList";
			f.method = "get";
			f.submit();
		}
		
		
			$(document).ready(function(){
				
				//걷고싶은 거리
				function check(){
					$.ajax({
						url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&contentTypeId=12&cat1=A02&cat2=A0203&cat3=A02030600&numOfRows=6&pageNo=1&MobileOS=ETC&MobileApp=AppTest&areaCode=&arrange=P",
								success:function(data){
									//console.log('success');
									for(i=0; i<6; i++){
									
										var tooltip = $('<div class="properties pb-20"style="width:30%; right:0px; height:400px; float:left;">'
												+'<div class="properties__card">'
												+'<div class="properties__img overlay1">'
												+'<a class="a'+i+'"href="#"><img src="/resources/assets/img/gallery/properties1.png" class="one'+i+'"></a>'
												+'<div class="img-text">'
												+'</div>'
												+'</div>'
												+'<div class="properties__caption">'
												+'<h3><a class="a'+i+'" href="#" id="title'+i+'"></a></h3>'
												+'<p id="addr1'+i+'"></p>'
							                    +'</div>'
								                +'</div>'
								                );
										
								
										  tooltip.appendTo('.directory-active1');
									}
									
									$(data).find('item').each(function(i){
										var contentid = $(this).find('contentid').text();
										var firstimage= $(this).find('firstimage').text();
										var title = $(this).find('title').text();
										var addr1 = $(this).find('addr1').text();
										var areacode = $(this).find('areacode').text();
										var mapx = $(this).find('mapx').text();
										var mapy = $(this).find('mapy').text();
										var sigungucode = $(this).find('sigungucode').text();
										var contenttypeid = $(this).find('contenttypeid').text();
										
										$(".one"+i).attr("src",firstimage);
										$("#title"+i).text(title);
										$("#addr1"+i).text(addr1);
										$(".a"+i).attr("href", "detail?writer=${member.userId}&contentid="+contentid+"&contenttypeid="+contenttypeid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));


									})
								}
					})
					return true;
				}
				check();
				//11월 축제 
				function check02(){
					$.ajax({
						url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival?serviceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&MobileOS=ETC&MobileApp=AppTest&arrange=P&listYN=Y&eventStartDate=20201101&numOfRows=6",
								success:function(data){
									console.log('success');
									for(i=0; i<6; i++){
										var tooltip = $('<div class="properties pb-20"style="width:30%; right:0px; height:400px; float:left;">'
												+'<div class="properties__card">'
												+'<div class="properties__img overlay1">'
												+'<a class="c'+i+'"href="#"><img src="/resources/assets/img/gallery/properties1.png" class="three'+i+'"></a>'
												+'<div class="img-text">'
												+'</div>'
												+'</div>'
												+'<div class="properties__caption">'
												+'<h3><a class="c'+i+'" href="#" id="title03'+i+'"></a></h3>'
												+'<p id="addr3'+i+'"></p>'
							                    +'</div>'
								                +'</div>');
										tooltip.appendTo('.directory-active2');
									}
									$(data).find('item').each(function(i){
										var contentid = $(this).find('contentid').text();
										var firstimage= $(this).find('firstimage').text();
										var title = $(this).find('title').text();
										var addr3 = $(this).find('addr1').text();
										var areacode = $(this).find('areacode').text();
										var mapx = $(this).find('mapx').text();
										var mapy = $(this).find('mapy').text();
										var sigungucode = $(this).find('sigungucode').text();
										var contenttypeid = $(this).find('contenttypeid').text();
										$(".three"+i).attr("src",firstimage);
										$("#title03"+i).text(title);
										$("#addr3"+i).text(addr3);
										$(".c"+i).attr("href", "/fesDetail?writer=${member.userId}&contentid="+contentid+"&mapx="+mapx+"&mapy="+mapy+"&areacode="+areacode+"&sigungucode="+sigungucode+"&title="+encodeURIComponent(title));
										
									})
								}
					})
					return true;

				}
			check02();
			
			//서울
	  function check03(){
		
		  var keyword = encodeURIComponent('서울');
		  $.ajax({
				url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&keyword="+keyword+"&MobileOS=ETC&MobileApp=AppTest",
				success:function(data){
						var totalCount = $(data).find('totalCount').text();
						
						 var html = '';
			
						html += '<a href="/search/searchList?search='+keyword+'&pageNo=1"class="location-btn">'+totalCount+' Listing </a>';
						$('.aa').after(html);
					
				}
		
			});
		}
		check03();
		
		//부산 
		 function check04(){
				
			  var keyword = encodeURIComponent('부산');
			  $.ajax({
					url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&keyword="+keyword+"&MobileOS=ETC&MobileApp=AppTest",
					success:function(data){
							var totalCount = $(data).find('totalCount').text();
							
							 var html = '';
								html += '<a href="/search/searchList?search='+keyword+'&pageNo=1"class="location-btn">'+totalCount+' Listing </a>';
							$('.bb').after(html);
						
					}
			
				});
			}
			check04();
			
		//제주
			 function check05(){
					
				  var keyword = encodeURIComponent('제주');
				  $.ajax({
						url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&keyword="+keyword+"&MobileOS=ETC&MobileApp=AppTest",
						success:function(data){
								var totalCount = $(data).find('totalCount').text();
								
								 var html = '';
									html += '<a href="/search/searchList?search='+keyword+'&pageNo=1"class="location-btn">'+totalCount+' Listing </a>';
								$('.cc').after(html);
							
						}
				
					});
				}
				check05();
				
			
				//강릉
				 function check06(){
						
					  var keyword = encodeURIComponent('강릉');
					  $.ajax({
							url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&keyword="+keyword+"&MobileOS=ETC&MobileApp=AppTest",
							success:function(data){
									var totalCount = $(data).find('totalCount').text();
									
									 var html = '';
										html += '<a href="/search/searchList?search='+keyword+'&pageNo=1"class="location-btn">'+totalCount+' Listing </a>';
									$('.dd').after(html);
								
							}
					
						});
					}
					check06();
					
					//전주
					 function check07(){
							
						  var keyword = encodeURIComponent('전주');
						  $.ajax({
								url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword?ServiceKey=hv1r3TuVw3a68NhJlK8NeubWiqo%2FZCS84w2lD0GVXtjtMkX%2B5qqQNbWxvviKqN7cOcYZW0lXMwgx4GK5tZSVHg%3D%3D&keyword="+keyword+"&MobileOS=ETC&MobileApp=AppTest",
								success:function(data){
										var totalCount = $(data).find('totalCount').text();
										
										 var html = '';
											html += '<a href="/search/searchList?search='+keyword+'&pageNo=1"class="location-btn">'+totalCount+' Listing </a>';
										$('.ee').after(html);
									
								}
						
							});
						}
						check07();
						
		
		///여기까지 
			}); 
			
		</script>
				


	  
	
	
</html>


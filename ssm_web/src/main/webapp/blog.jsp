﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">

	<!-- Meta required for Bootstrap -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />
	<title>Home</title>

	<!-- Fonts -->
	<link rel="stylesheet" href="assets/fonts/Quattrocento/Quattrocento.css">
	<link rel="stylesheet" href="assets/fonts/Quattrocento_Sans/Quattrocento_Sans.css">

	<!-- Icons -->
	<link rel="stylesheet" href="assets/fonts/MaterialDesign/css/materialdesignicons.min.css">
	<link rel="stylesheet" href="assets/fonts/Outicons/flaticon.css">

	<!-- Styles -->
	<link rel="stylesheet" href="libs/bootstrap-4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="libs/owl-carousel/owl.carousel.css">
	<link rel="stylesheet" href="libs/owl-carousel/owl.theme.css">

	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="assets/css/responsive.css">

	<!--[if IE 9]>
	<link rel="stylesheet" href="assets/css/ie9.css">
	<![endif]-->

</head>
<body>
	<!-- <div id="page-preloader"><span class="spinner"></span></div> -->
	<div class="page-wraper">
		<div class="full-search-wrap">
			<div class="full-search container">
				<div class="full-search__close pull-right animate"><span class="mdi mdi-close"></span></div>
				<form action="/" class="full-search__form">
			        <input type="text" id="s-full" class="full-search__input" placeholder="Search"> 
			        <input type="submit" hidden>
					<p class="full-search__hint">Type in your search and press enter</p>
				</form>
			</div>
		</div>

		<!-- Header section start -->
		<header class="page-header header-sticky">
			<div class="container">
				<div class="top-bar">
					<div class="top-bar__widgets">
						<div class="row align-items-center">
							<div class="col-md-5 col-lg-4">
								<div class="top-bar__user-menu">
									<ul class="user-menu nav justify-content-center justify-content-md-start">
										<li class="nav-item"><button class="search-btn" id="js-search-btn"><span class="icon-left icon-xs flaticon-magnifying-glass-browser"></span>Search</button></li>
										<li class="nav-item"><a href="#"><span class="icon-left icon-xs flaticon-closed-envelope-email"></span>Subscribe</a></li>
										<li class="nav-item"><a href="#"><span class="icon-left icon-xs flaticon-messenger-user-avatar"></span>Login</a></li>
									</ul>
								</div>
							</div>
							<div class="col-md-2 col-lg-4">
								<div class="top-bar__logo text-lg-center">
									<a href="index.html" class="logo-title logo-title_reg">yomac</a>
								</div>
							</div>
							<div class="col-md-5 col-lg-4">
								<div class="top-bar__social text-right">
									<ul class="social-menu social-menu__right nav justify-content-md-end">
										<li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-facebook"></i></a></li>
										<li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-instagram"></i></a></li>
										<li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-twitter"></i></a></li>
										<li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-pinterest"></i></a></li>
										<li class="nav-item"><a href="#" class="nav-item"><i class="mdi mdi-medium"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="mob-menu">
						<div id="mob-toggle" class="animate"><i class="icon icon-lg flaticon-menu-options"></i></div>
					</div>
				</div>
				<div class="main-navigation__wrap">
					<div class="main-navigation absolute">
						<ul class="nav justify-content-between">
							<li class="nav-item"><a class="nav-link" href="category-post.jsp">Art &amp; Illustration</a></li>
							<li class="nav-item"><a class="nav-link" href="category-post.jsp">Architecture</a></li>
							<li class="nav-item"><a class="nav-link" href="category-post.jsp">Fashion</a></li>
							<li class="nav-item"><a class="nav-link" href="category-post.jsp">Furniture</a></li>
							<li class="nav-item"><a class="nav-link" href="category-post.jsp">Graphic Design</a></li>
							<li class="nav-item"><a class="nav-link" href="category-post.jsp">Photography</a></li>
							<li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
							<li class="nav-item"><a class="nav-link" href="contact.jsp">Contacts</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>

		<!-- Page content section start -->	
		<main class="page-content">
			<!-- Main content section start -->	
			<div class="main-content">

				<!-- Slider section start -->
				<section class="hero-slider-section">
					<div id="hero-slider" class="main-slider">
						<div class="main-slider__item" style="background-image: url('assets/img/slide-4.jpg')">
							<div class="container">
								<div class="item__content">
									<div class="cat-title">Photography</div>
									<div class="main-slider__title">Put Wings On Your<br> Dreams</div>
								</div>
							</div>
						</div>
						<div class="main-slider__item" style="background-image: url('assets/img/slide-1.jpg')">
							<div class="container">
								<div class="item__content">
									<div class="cat-title">Photography</div>
									<div class="main-slider__title">A Starter Guide To Self <br>Improvement</div>
								</div>
							</div>
						</div>
						<div class="main-slider__item" style="background-image: url('assets/img/slide-2.jpg')">
							<div class="container">
								<div class="item__content">
									<div class="cat-title">Fashion</div>
									<h1 class="main-slider__title">Tips For Choosing The<br> Perfect Gloss For Your Lips</h1>
								</div>
							</div>
						</div>
						<div class="main-slider__item" style="background-image: url('assets/img/slide-3.jpg')">
							<div class="container">
								<div class="item__content">
									<div class="cat-title">Photography</div>
									<div class="main-slider__title">American Standards<br> And European Culture</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- Slider section start -->

				<!-- News primary section start -->
				<section class="section news-primary">
					<div class="container">
						<h2 class="screen-reader-text">Posts</h2>
						<div class="row row-extended">
							<div class="col-lg-8">
								<div class="news-standart columns-1">
									<div class="new-item">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="#"><img src="assets/img/new22.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="#">Enlightenment Is Not Just One State</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-author">
														<a href="#"><span class="meta-author__img"><img src="assets/img/contain-18.jpg" alt=""></span>Mabelle Fox</a>
													</li>
													<li class="new-item__meta-cat"><a href="category-post.jsp">Art &amp; Illustration</a></li>
													<li class="new-item__meta-time">2 hours ago</li>
												</ul>
											</div>
										</div>	
									</div>
									<div class="new-item">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="#"><img src="assets/img/new18.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="#">Know Yourself Your Inner Power</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-author">
														<a href="#"><span class="meta-author__img"><img src="assets/img/contain-12.jpg" alt=""></span>Jesus Cortez</a>
													</li>
													<li class="new-item__meta-cat"><a href="category-post.jsp">Art &amp; Illustration</a></li>
													<li class="new-item__meta-time">06:19am</li>
												</ul>
											</div>
										</div>	
									</div>
									<div class="new-item">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="#"><img src="assets/img/new24.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="#">Vampires The Romantic Ideology Behind Them</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-author">
														<a href="#"><span class="meta-author__img"><img src="assets/img/contain-10.jpg" alt=""></span>Christine Kelly</a>
													</li>
													<li class="new-item__meta-cat"><a href="#">Fashion</a></li>
													<li class="new-item__meta-time">08:02am</li>
												</ul>
											</div>	
										</div>
									</div>
									<div class="new-item">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="#"><img src="assets/img/new25.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="#">When The Morning Dawns</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-author">
														<a href="#"><span class="meta-author__img"><img src="assets/img/contain-18.jpg" alt=""></span>Mabelle Fox</a>
													</li>
													<li class="new-item__meta-cat"><a href="category-post.jsp">Art &amp; Illustration</a></li>
													<li class="new-item__meta-time">00:56am</li>
												</ul>
											</div>	
										</div>
									</div>
									<div class="new-item">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="#"><img src="assets/img/new25.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="#">The Science Of Superstitions</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-author">
														<a href="#"><span class="meta-author__img"><img src="assets/img/contain-16.jpg" alt=""></span>Cody Robbins</a>
													</li>
													<li class="new-item__meta-cat"><a href="#">Architecture</a></li>
													<li class="new-item__meta-time">08:10am</li>
												</ul>
											</div>	
										</div>
									</div>
								</div>
								<div class="posts-pagination text-center">
									<ul class="pagination">
										<!-- <li class="previous"><a href="#"><i class="icon flaticon-left-arrow-sign"></i>PREV</a></li> -->
										<li class="active"><a href="#">01</a></li>
										<li><a href="#">02</a></li>
										<li><a href="#">03</a></li>
										<li><a href="#">04</a></li>	
										<li class="hidden-xs"><a href="#">05</a></li>	
										<li class="hidden-xs"><a href="#">06</a></li>	
										<li class="hidden-xs"><a href="#">07</a></li>
										<li class="hidden-sm hidden-xs"><a href="#">08</a></li>
										<li class="hidden-sm hidden-xs"><a href="#">09</a></li>
										<li class="more"><a href="#">...</a></li>
										<li class="next"><a href="#">NEXT <i class="icon flaticon-right-direction"></i></a></li>
									</ul>
								</div>
							</div>
							<aside class="sidebar col-lg-4">
								<div class="widget-sidebar">
									<div class="widget-sidebar__title">Most popular</div>
									<ul class="widget-post-list">
										<li class="widget-post">
											<div class="widget-post__img">
												<a href="#"><img src="assets/img/small-post6.jpg" alt=""></a>
											</div>
											<div class="widget-post__content">
												<div class="cat-title"><a href="#">Art &amp; Illustration</a></div>
												<div class="h4 widget-post__title"><a href="#">When The Morning Dawns</a></div>
												<div class="widget-post__views">820</div>
											</div>
										</li>
										<li class="widget-post">
											<div class="widget-post__img">
												<a href="#"><img src="assets/img/small-post2.jpg" alt=""></a>
											</div>
											<div class="widget-post__content">
												<div class="cat-title"><a href="#">Graphic Design</a></div>
												<div class="h4 widget-post__title"><a href="#">Comment On The Importance</a></div>
												<div class="widget-post__views">404</div>
											</div>
										</li>
										<li class="widget-post">
											<div class="widget-post__img">
												<a href="#"><img src="assets/img/small-post3.jpg" alt=""></a>
											</div>
											<div class="widget-post__content">
												<div class="cat-title"><a href="#">Furniture</a></div>
												<div class="h4 widget-post__title"><a href="#">The Bright Side Of Life</a></div>
												<div class="widget-post__views">125</div>
											</div>
										</li>
										<li class="widget-post">
											<div class="widget-post__img">
												<a href="#"><img src="assets/img/small-post4.jpg" alt=""></a>
											</div>
											<div class="widget-post__content">
												<div class="cat-title"><a href="#">Fashion</a></div>
												<div class="h4 widget-post__title"><a href="#">Philosophy As A Science</a></div>
												<div class="widget-post__views">987</div>
											</div>
										</li>
										<li class="widget-post">
											<div class="widget-post__img">
												<a href="#"><img src="assets/img/small-post5.jpg" alt=""></a>
											</div>
											<div class="widget-post__content">
												<div class="cat-title"><a href="#">Photography</a></div>
												<div class="h4 widget-post__title"><a href="#">Just One State</a></div>
												<div class="widget-post__views">743</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="widget-sidebar">
									<div class="widget-sidebar__title">Latest tweet</div>
									<div class="widget-twitter widget-socialnet">
										<div class="social-user"><i class="mdi mdi-twitter"></i><a href="#">@HelloYomac</a></div>
										<div class="social-content">The best way to start Friday is... to read Yomac blog! Check out our latest articles — "Fashion… </div>
										<a href="https://www.instagram.com/p/Bafe5G4/" class="tweet-link">https://www.instagram.com/p/Bafe5G4/</a>
									</div>
								</div>
								<div class="widget-sidebar">
									<div class="widget-sidebar__title">Newsletter</div>
									<div class="widget-newsletter">
										<p class="widget-newsletter__text">Enter your email address to receive all news, updates on new arrivals, special offers and other information.</p>
										<div class="widget-newsletter__form input-group">
									    	<input type="text" class="form-control" placeholder="Your e-mail">
								    		<span class="input-group-btn">
								        		<button class="btn btn-primary animate" type="button">Subscribe</button>
								      		</span>
									    </div>
									</div>
								</div>
								<div class="widget-sidebar">
									<div class="widget-sidebar__title">Instagram</div>
									<div class="widget-instagram widget-socialnet">
										<div class="social-user"><i class="mdi mdi-instagram"></i><a href="#">#Yomac</a></div>
										<div class="social-content">
											<ul class="instagram-imgs">
												<li class="instagram-image"><a href="#"><img src="assets/img/instag4.jpg" alt=""></a></li>
												<li class="instagram-image"><a href="#"><img src="assets/img/instag5.jpg" alt=""></a></li>
												<li class="instagram-image"><a href="#"><img src="assets/img/instag6.jpg" alt=""></a></li>
												<li class="instagram-image"><a href="#"><img src="assets/img/instag1.jpg" alt=""></a></li>
												<li class="instagram-image"><a href="#"><img src="assets/img/instag2.jpg" alt=""></a></li>
												<li class="instagram-image"><a href="#"><img src="assets/img/instag3.jpg" alt=""></a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="widget-sidebar">
									<div class="widget-sidebar__title">Popular Tags</div>
									<div class="tag-cloud">
										<a href="category-post.jsp"><span class="label label-default animate">Architecture</span></a>
										<a href="category-post.jsp"><span class="label label-default animate">Industrial Design</span></a>
										<a href="category-post.jsp"><span class="label label-default animate">Art</span></a>
										<a href="category-post.jsp"><span class="label label-default animate">Illustration</span></a>
										<a href="category-post.jsp"><span class="label label-default animate">Package Design</span></a>
										<a href="category-post.jsp"><span class="label label-default animate">Photography</span></a>
										<a href="category-post.jsp"><span class="label label-default animate">Fashion</span></a>
									</div>
								</div>
							</aside>
						</div>
					</div>
				</section>
				<!-- News primary section end -->
			</div>
			<!-- Main content section end -->	
		</main>
		<!-- Page content section end -->	

		<!-- Footer section start -->
		<footer class="page-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-5 footer-widget footer__copy">
						<div class="footer__logo footer-widget">
							<a href="index.html" class="logo-title logo-title_reg animate">yomac</a>
						</div>
						<div class="textwidget">
							<p>Perfectly to any kind of news and <br>magazine blogs. Designed responsive<br> and ready for retina.</p>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 col-lg-2 footer-widget footer__page-menu">
						<div class="widget-menu">
							<ul class="footer-menu animate">
								<li><a href="index.html">Home</a></li>
								<li><a href="about.jsp">About</a></li>
								<li><a href="contact.jsp">Contacts</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6 col-md-3 col-lg-3 footer-widget footer__cat-menu">
						<div class="widget-menu">
							<ul class="footer-menu animate">
								<li><a href="category-post.jsp">Art &amp; Illustration</a></li>
								<li><a href="category-post.jsp">Architecture</a></li>
								<li><a href="category-post.jsp">Fashion</a></li>
								<li><a href="category-post.jsp">Furniture</a></li>
								<li><a href="category-post.jsp">Graphic Design</a></li>
								<li><a href="category-post.jsp">Photography</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 footer-widget footer__social-menu">
						<div class="widget-social">
							<div class="widget-title">We are social</div>
							<ul class="social-menu social-menu__left nav animate">
								<li><a href="#"><i class="mdi mdi-facebook"></i></a></li>
								<li><a href="#"><i class="mdi mdi-instagram"></i></a></li>
								<li><a href="#"><i class="mdi mdi-twitter"></i></a></li>
								<li><a href="#"><i class="mdi mdi-pinterest"></i></a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="row page-footer__bottom">
					<div class="col-lg-10">
						<div class="copyright">&copy; 2020, Yomac Template, All Rights <a href="http://www.bootstrapmb.com/">Reserved</a>.</div>
					</div>
					<div class="col-lg-2">
						<div class="footer-nav nav">
							<li class="nav-item">
								<a href="#" class="nav-item">Privacy</a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-item">Terms of use</a>
							</li>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer section end -->	

		<!-- To top section start -->
		<div id="to-top" class="page-to-top animate text-center"><span class="icon icon-left flaticon-up-arrow-sign">Page top</span></div>
	</div>
	<!-- Scripts -->

	<script src="libs/jquery/jquery-2.2.3.min.js"></script>
	<script src="libs/bootstrap-4.3.1/js/popper.min.js"></script>
	<script src="libs/bootstrap-4.3.1/js/bootstrap.min.js"></script>
	<script src="libs/owl-carousel/owl.carousel.min.js"></script>
	<script src="libs/isotope/imagesLoaded.min.js"></script>
	<script src="libs/isotope/isotope.pkgd.min.js"></script>
	<script src="assets/js/common.js"></script>

	<!--[if lt IE 9]>
	<script src="libs/html5shiv/es5-shim.min.js"></script>
	<script src="libs/html5shiv/html5shiv.min.js"></script>
	<script src="libs/html5shiv/html5shiv-printshiv.min.js"></script>
	<script src="libs/respond/respond.min.js"></script>
	<![endif]-->

</body>
</html>
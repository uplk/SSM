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
	<title>About - Yomac</title>

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
					<div class="main-navigation">
						<ul class="nav justify-content-between">
							<li class="nav-item menu-item-has-children">
								<a href="index.html" class="nav-link">Home</a>
								<ul class="sub-menu">
									<li><a href="index-listing.jsp" class="nav-link">Home List</a></li>
									<li><a href="index-grid.jsp" class="nav-link">Home Grid</a></li>
									<li><a href="index.html" class="nav-link">Home Masonry</a></li>
									<li><a href="index-no-menu.jsp" class="nav-link">Home Clear</a></li>
									<li><a href="blog.jsp" class="nav-link">Home Blog</a></li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="category-post.jsp" class="nav-link">Architecture</a>
							</li>
							<li class="nav-item">
								<a href="category-post.jsp" class="nav-link">Fashion</a>
							</li>
							<li class="nav-item">
								<a href="category-post.jsp" class="nav-link">Furniture</a>
							</li>
							<li class="nav-item menu-item-has-children">
								<a href="post-single_sidebar.jsp" class="nav-link">Post Layout</a>
								<ul class="sub-menu">
									<li class="nav-item">
										<a href="post-single_sidebar.jsp" class="nav-link">Sidebar Right</a>
									</li>
									<li class="nav-item">
										<a href="post-single_full.jsp" class="nav-link">No Sidebar</a>
									</li>
								</ul>
							</li>
							<li class="nav-item active">
								<a href="about.jsp" class="nav-link">About</a>
							</li>
							<li class="nav-item">
								<a href="contact.jsp" class="nav-link">Contacts</a>
							</li>
							<li class="nav-item menu-item-has-children">
								<a href="shortcodes.jsp" class="nav-link">Shortcodes</a>
								<ul class="sub-menu">
									<li class="nav-item">
										<a href="shortcodes.jsp" class="nav-link">Shortcodes</a>
									</li>
									<li class="nav-item">
										<a href="404-page.jsp" class="nav-link">404 Page</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- Header section end -->	

		<!-- Page content section start -->	
		<main class="page-content">
			
			<!-- Page title section start -->	
			<div class="page-head" style="background-image: url('assets/img/about-contain.jpg');">
				<div class="container">
					<div class="page-head__breadcrumb">
						<ol class="breadcrumb">
							<li><a href="index.html">home</a></li>
							<li class="active">about</li>
						</ol>
					</div>
					<h1 class="page-head__title">About</h1>
				</div>
			</div>
			<!-- Page title section end -->

				
			<!-- About info section start -->
			<section class="section about-info">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h2 class="section-title h4">Feel good about yourself</h2>
							<p class="section-text line-after">The 12 steps to acquire mind-power is intended to build positive visuals, acquire mind power and help you achieve your dreams and desires that may be as varied as improving your personality, increasing your wealth, attracting love and making yourself attractive.</p>
						</div>
						<div class="col-md-6">
							<div class="about-info__img"><img src="assets/img/about.jpg" alt=""></div>
						</div>
					</div>
				</div>
			</section>
			<!-- Contact info section end -->

			<!-- Team section start -->
			<section class="team">
				<div class="container">
					<h2 class="h4 section-title">Current editors</h2>
					<div class="team-list d-flex flex-wrap">
						<div class="team-list__item">
							<div class="team__photo">
								<img src="assets/img/team1.jpg" alt="">
							</div>
							<div class="team__info">
								<div class="team__name">Derrick Houston</div>
								<ul class="team__links nav animate">
									<li><a href="#"><span class="mdi mdi-twitter"></span></a></li>
									<li><a href="#"><span class="mdi mdi-linkedin"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="team-list__item">
							<div class="team__photo">
								<img src="assets/img/team2.jpg" alt="">
							</div>
							<div class="team__info">
								<div class="team__name">Helen Lucas</div>
								<ul class="team__links nav animate">
									<li><a href="#"><span class="mdi mdi-twitter"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="team-list__item">
							<div class="team__photo">
								<img src="assets/img/team3.jpg" alt="">
							</div>
							<div class="team__info">
								<div class="team__name">Henry Aguilar</div>
								<ul class="team__links nav animate">
									<li><a href="#"><span class="mdi mdi-linkedin"></span></a></li>
									<li><a href="#"><span class="mdi mdi-google-plus"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="team-list__item">
							<div class="team__photo">
								<img src="assets/img/team4.jpg" alt="">
							</div>
							<div class="team__info">
								<div class="team__name">Charlie Lewis</div>
								<ul class="team__links nav animate">
									<li><a href="#"><span class="mdi mdi-twitter"></span></a></li>
									<li><a href="#"><span class="mdi mdi-google-plus"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="team-list__item">
							<div class="team__photo">
								<img src="assets/img/team5.jpg" alt="">
							</div>
							<div class="team__info">
								<div class="team__name">Fred Hart</div>
								<ul class="team__links nav animate">
									<li><a href="#"><span class="mdi mdi-linkedin"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Contact adresses section end -->

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
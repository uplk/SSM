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
	<title>Home - Yomac</title>

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
							<li class="nav-item">
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

			<!-- Slider section start -->
			<section class="hero-slider-section">
				<div id="hero-slider" class="main-slider">
					<div class="main-slider__item" style="background-image: url('assets/img/slide-2.jpg')">
						<div class="container">
							<div class="item__content">
								<div class="cat-title"><a href="category-post.jsp">Fashion</a></div>
								<h1 class="main-slider__title"><a href="post-single_sidebar.jsp">Tips For Choosing The<br> Perfect Gloss For Your Lips</a></h1>
							</div>
						</div>
					</div>
					<div class="main-slider__item" style="background-image: url('assets/img/slide-3.jpg')">
						<div class="container">
							<div class="item__content">
								<div class="cat-title"><a href="category-post.jsp">Photography</a></div>
								<div class="main-slider__title"><a href="post-single_sidebar.jsp">American Standards<br> And European Culture</a></div>
							</div>
						</div>
					</div>
					<div class="main-slider__item" style="background-image: url('assets/img/slide-4.jpg')">
						<div class="container">
							<div class="item__content">
								<div class="cat-title"><a href="category-post.jsp">Photography</a></div>
								<div class="main-slider__title"><a href="post-single_sidebar.jsp">Put Wings On Your<br> Dreams</a></div>
							</div>
						</div>
					</div>
					<div class="main-slider__item" style="background-image: url('assets/img/slide-1.jpg')">
						<div class="container">
							<div class="item__content">
								<div class="cat-title"><a href="category-post.jsp">Photography</a></div>
								<div class="main-slider__title"><a href="post-single_sidebar.jsp">A Starter Guide To Self <br>Improvement</a></div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Slider section start -->

			<!-- News primary section start -->
			<section class="section news-primary">
				<div class="container">
					<h2 class="screen-reader-text">News</h2>
					<div class="news-grid flex-row row columns-3">
						<div class="new-item col-md-6 col-lg-4">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new15.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Althusser Competing Interpellations</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-18.jpg" alt=""></span>Mabelle Fox</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Art &amp; Illustration</a></li>
										<li class="new-item__meta-time">2 hours ago</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new11.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Peace On Earth A Wonderful Wish</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-16.jpg" alt=""></span>Raymond Manning</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Furniture</a></li>
										<li class="new-item__meta-time">19:52am</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new17.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Natural Home Treatment For Cellulite</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-14.jpg" alt=""></span>Gary Howell</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Fashion</a></li>
										<li class="new-item__meta-time">02:43am</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new13.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Roar With Confidence</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-12.jpg" alt=""></span>Jacob Cross</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Photography</a></li>
										<li class="new-item__meta-time">08:49am</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new9.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Harness The Power Of Words In Your Life</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-10.jpg" alt=""></span>Lina Horton</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Architecture</a></li>
										<li class="new-item__meta-time">21:58pm</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new18.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Six Pack Abs The Big Picture</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-21.jpg" alt=""></span>Jerome Paul</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Architecture</a></li>
										<li class="new-item__meta-time">21:58pm</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4 last">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new19.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">How Do You Get Up And Go Forward</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-18.jpg" alt=""></span>Mabelle Fox</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Art &amp; Illustration</a></li>
										<li class="new-item__meta-time">2 hours ago</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4 last">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new1.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">The A Z Of Motivation</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-16.jpg" alt=""></span>Raymond Manning</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Furniture</a></li>
										<li class="new-item__meta-time">19:52am</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="new-item col-md-6 col-lg-4 last">
							<div class="new-item__wrap">
								<div class="new-item__image">
									<a href="post-single_sidebar.jsp"><img src="assets/img/new21.jpg" alt=""></a>
								</div>
								<div class="new-item__info">
									<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">The Power Of Notes</a></div>
									<ul class="new-item__meta d-flex align-items-center">
										<li class="new-item__meta-author">
											<a href="category-post.jsp"><span class="meta-author__img"><img src="assets/img/contain-14.jpg" alt=""></span>Gary Howell</a>
										</li>
										<li class="new-item__meta-cat"><a href="category-post.jsp">Fashion</a></li>
										<li class="new-item__meta-time">02:43am</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- News primary section end -->

			<!-- Popular carousel section start -->
			<section class="pop-carousel">
				<div class="container">
					<div class="row">
						<div class="col-md-12 owl-carousel__navigation">
							<h2 class="h4 owl-carousel__title widget-sidebar__title">Most popular</h2>
							<div class="owl-carousel__btns">
								<a class="btn owl-carousel__btn prev animate"><span class="icon flaticon-left-arrow-sign"></span></a>
								<a class="btn owl-carousel__btn next animate"><span class="icon flaticon-right-direction"></span></a>
							</div>
						</div>
					</div>
					<div class="owl-carousel__wrap popular-posts-carousel">
						<ul class="owl-carousel item-3 custom-nav post-list list-unstyled">
							<li class="widget-post carousel__item">
								<div class="widget-post__img">
									<a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
								</div>
								<div class="widget-post__content">
									<div class="cat-title"><a href="category-post.jsp">Art &amp; Illustration</a></div>
									<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
									<div class="widget-post__views">820</div>
								</div>
							</li>
							<li class="widget-post carousel__item">
								<div class="widget-post__img">
									<a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
								</div>
								<div class="widget-post__content">
									<div class="cat-title"><a href="category-post.jsp">Graphic Design</a></div>
									<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
									<div class="widget-post__views">404</div>
								</div>
							</li>
							<li class="widget-post carousel__item">
								<div class="widget-post__img">
									<a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
								</div>
								<div class="widget-post__content">
									<div class="cat-title"><a href="category-post.jsp">Furniture</a></div>
									<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
									<div class="widget-post__views">125</div>
								</div>
							</li>
							<li class="widget-post carousel__item">
								<div class="widget-post__img">
									<a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
								</div>
								<div class="widget-post__content">
									<div class="cat-title"><a href="category-post.jsp">Fashion</a></div>
									<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
									<div class="widget-post__views">987</div>
								</div>
							</li>
							<li class="widget-post carousel__item">
								<div class="widget-post__img">
									<a href="post-single_sidebar.jsp"><img src="assets/img/small-post5.jpg" alt=""></a>
								</div>
								<div class="widget-post__content">
									<div class="cat-title"><a href="category-post.jsp">Photography</a></div>
									<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Just One State</a></div>
									<div class="widget-post__views">743</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</section>
			<!-- Popular carousel section end -->

			<!-- Newsletter section start -->
			<section class="newsletter has-fill" style="background-image: url('assets/img/newslatter2.jpg');">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-md-8 col-lg-6 text-center">
							<h2 class="newsletter__title">Newsletter</h2>
							<p class="newsletter__text">Enter your email address to receive all news, updates on new arrivals, special offers and other information.</p>
							<form action="/">
								<div class="input-group newsletter__form">
									<input type="text" class="form-control" placeholder="Your e-mail">
									<span class="input-group-btn">
										<button class="btn btn-primary animate" type="button">Subscribe</button>
									</span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
			<!-- Newsletter section end -->

			<!-- News small section start -->
			<section class="section news-small">
				<div class="container">
					<h2 class="screen-reader-text">News</h2>
					<div class="row row-extended">
						<div class="col-md-8">
							<div class="news-list-sm columns-2">
								<div class="row">
									<div class="new-item new-item_small col-sm-6">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="post-single_sidebar.jsp"><img src="assets/img/new27.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Aloe Vera A Wonder Herb For Skin</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-cat"><a href="category-post.jsp">Photography</a></li>
													<li class="new-item__meta-time">18:35pm</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="new-item new-item_small col-sm-6">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="post-single_sidebar.jsp"><img src="assets/img/new30.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">A World Of Infinite Opportunities</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-cat"><a href="category-post.jsp">Art &amp; Illustration</a></li>
													<li class="new-item__meta-time">02:25pm</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="new-item new-item_small col-sm-6">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="post-single_sidebar.jsp"><img src="assets/img/new-sm1.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Religion And Science</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-cat"><a href="category-post.jsp">Art &amp; Illustration</a></li>
													<li class="new-item__meta-time">18:35pm</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="new-item new-item_small col-sm-6">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="post-single_sidebar.jsp"><img src="assets/img/new-sm2.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Enlightenment Is Not Just One State</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-cat"><a href="category-post.jsp">Photography</a></li>
													<li class="new-item__meta-time">02:25pm</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="new-item new-item_small col-sm-6">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="post-single_sidebar.jsp"><img src="assets/img/new-sm3.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">Peace On Earth A Wonderful Wish But No Way</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-cat"><a href="category-post.jsp">Architecture</a></li>
													<li class="new-item__meta-time">19:22pm</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="new-item new-item_small col-sm-6">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="post-single_sidebar.jsp"><img src="assets/img/new-sm4.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">The Basics Of Western Astrology Explained</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-cat"><a href="category-post.jsp">Photography</a></li>
													<li class="new-item__meta-time">01:36pm</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="new-item new-item_small last col-sm-6">
										<div class="new-item__wrap">
											<div class="new-item__image">
												<a href="post-single_sidebar.jsp"><img src="assets/img/new-sm5.jpg" alt=""></a>
											</div>
											<div class="new-item__info">
												<div class="h3 new-item__title"><a href="post-single_sidebar.jsp">A Brief History Of Food</a></div>
												<ul class="new-item__meta d-flex align-items-center">
													<li class="new-item__meta-cat"><a href="category-post.jsp">Photography</a></li>
													<li class="new-item__meta-time">01:02pm</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="blockquote text-center col-sm-6">
										<div class="blockquote__text font-serif">“Kindness And Motivation Tips Challenge Groups To Make A Difference”</div>
										<div class="blockquote__author">Rena Wood</div>
									</div>
								</div>
							</div>
						</div>
						<aside class="sidebar col-lg-4">
							<div class="widget-sidebar">
								<div class="widget-sidebar__title">Latest tweet</div>
								<div class="widget-twitter widget-socialnet">
									<div class="social-user"><i class="mdi mdi-twitter"></i><a href="#">@HelloYomac</a></div>
									<div class="social-content">The best way to start Friday is... to read Yomac blog! Check out our latest articles — "Fashion… </div>
									<a href="https://www.instagram.com/p/Bafe5G4/" class="tweet-link">https://www.instagram.com/p/Bafe5G4/</a>
								</div>
							</div>
							<div class="widget-sidebar">
								<div class="widget-sidebar__title">instagram</div>
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
								<div class="widget-sidebar__title">popular Tags</div>
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
			<!-- News small section end -->

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
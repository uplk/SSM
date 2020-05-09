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
	<title>Shortcodes</title>

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
				<div class="full-search__close pull-right"><span class="mdi mdi-close"></span></div>
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
							<li class="nav-item active  menu-item-has-children">
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
			<div class="page-head" style="background-image: url('assets/img/shortcode-contain.jpg');">
				<div class="container">
					<div class="page-head__breadcrumb">
						<ol class="breadcrumb">
							<li><a href="index.html">home</a></li>
							<li class="active">elements</li>
						</ol>
					</div>
					<h1 class="page-head__title">Shortcodes</h1>
				</div>
			</div>
			<!-- Page title section end -->

			<!-- Headings section start -->
			<section class="shortcode-wrap shortcode-headings">
				<div class="container">
					<h2 class="h5 cat-title">Headings</h2>
					<div class="row">
						<div class="col-md-5">
							<div class="font-serif">
								<h1>Heading H1</h1>
								<h2>Heading H2</h2>
								<h3>Heading H3</h3>
								<h4 class="mb-3">Heading H4</h4>
								<p class="demo-text-p mb-0">Body text, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudantiu.</p>
							</div>
						</div>
						<div class="col-md-5">
							<div class="font-sans">
								<h1>Heading H1</h1>
								<h2>Heading H2</h2>
								<h3>Heading H3</h3>
								<h4 class="mb-3">Heading H4</h4>
								<p class="demo-text-p mb-0">Body text, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error voluptatem accusantium doloremque laudantiu.</p>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Headings section end -->

			<!-- Buttons section start -->
			<section class="shortcode-wrap shortcode-buttons">
				<div class="container">
					<h2 class="h5 cat-title">Buttons</h2>
					<div class="row">
						<div class="col-lg-2 col-md-4 col-sm-6 shortcode-buttons__btn-group">
							<button class="btn btn-secondary btn-block">button</button>
							<button class="btn btn-secondary btn-block active">button</button>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-6 shortcode-buttons__btn-group">
							<button class="btn btn-primary btn-block">button</button>
							<button class="btn btn-primary btn-block active">button</button>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-6 shortcode-buttons__btn-group">
							<button class="btn btn-outline-secondary hover-to-outline btn-block">button</button>
							<button class="btn btn-outline-secondary hover-to-outline btn-block active">button</button>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-6 shortcode-buttons__btn-group">
							<button class="btn btn-outline-primary hover-to-outline btn-block">button</button>
							<button class="btn btn-outline-primary hover-to-outline btn-block active">button</button>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-6 shortcode-buttons__btn-group">
							<button class="btn btn-outline-secondary btn-block">button</button>
							<button class="btn btn-outline-secondary btn-block active">button</button>
						</div>
						<div class="col-lg-2 col-md-4 col-sm-6 shortcode-buttons__btn-group">
							<button class="btn btn-outline-primary btn-block">button</button>
							<button class="btn btn-outline-primary btn-block active">button</button>
						</div>
					</div>
				</div>
			</section>
			<!-- Buttons section end -->

			<!-- Alerts section start -->
			<section class="shortcode-wrap shortcode-alerts">
				<div class="container">
					<h5 class="cat-title">Alerts</h5>
					<div class="row">
						<div class="col-md-12">
							<div class="alert alert-danger alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="mdi mdi-close"></i></button>
							Warning! Better check yourself, you're not looking too good.</div>
							<div class="alert alert-success alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="mdi mdi-close"></i></button>
							Success! Better check yourself, you're not looking too good.</div>
							<div class="alert alert-warning alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="mdi mdi-close"></i></button>
							Info! Better check yourself, you're not looking too good.</div>
							<div class="alert alert-info alert-dismissable">
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="mdi mdi-close"></i></button>
							Heads up! This alert needs your attention, but it's not super important.</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Alerts section end -->

			<!-- Quotes section start -->
			<section class="shortcode-wrap shortcode-quotes">
				<div class="container">
					<h5 class="cat-title">Quotes</h5>
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<blockquote class="mb-0 font-serif">I am upset. At this moment, as I sit here typing this up, I am truly upset. Something happened a little while ago.</blockquote>
						</div>
						<div class="col-lg-6">
							<blockquote class="mb-0 blockquote-light font-sans">As we grow, we do so in fits and starts, lurching forward then back, sometimes looking more like clowns than seekers.</blockquote>
						</div>
					</div>
				</div>
			</section>
			<!-- Quotes section end -->

			<!-- Accordions and toggles section start -->
			<section class="shortcode-wrap shortcode-toogles">
				<div class="container">
					<h5 class="cat-title">Accordion &amp; toggle</h5>
					<div class="row">
						<div class="col-lg-6">
							<div class="accordion" id="accordion">
								<div class="card">
									<div class="card-header">
										<a class="card-title accordion-toggle" aria-expanded="true" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Featured in Shop Magazine — JUNE 2016</a>
									</div>
									<div id="collapseOne" class="collapse show">
										<div class="card-body">
											Then imagine that when you breathe in you are taking in energy. The golden light now becomes brighter and brighter, the harmonies get louder and the vibrations become stronger and stronger.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<a class="card-title accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Our Mission Statement</a>
									</div>
									<div id="collapseTwo" class="collapse">
										<div class="card-body">
											Then imagine that when you breathe in you are taking in energy. The golden light now becomes brighter and brighter, the harmonies get louder and the vibrations become stronger and stronger.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<a class="card-title accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Expanding Our Branch Network</a>
									</div>
									<div id="collapseThree" class="collapse">
										<div class="card-body">
											Then imagine that when you breathe in you are taking in energy. The golden light now becomes brighter and brighter, the harmonies get louder and the vibrations become stronger and stronger.
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-lg-6">
							<div class="accordion accordion-minus" id="accordion2">
								<div class="card">
									<div class="card-header">
										<a class="card-title accordion-toggle" data-toggle="collapse" aria-expanded="true" data-parent="#accordion2" href="#collapseOne2">Delivery Information</a>
									</div>
									<div id="collapseOne2" class="collapse show">
										<div class="card-body">
											Then imagine that when you breathe in you are taking in energy. The golden light now becomes brighter and brighter, the harmonies get louder and the vibrations become stronger and stronger.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<a class="card-title accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo2">Terms &amp; Conditions</a>
									</div>
									<div id="collapseTwo2" class="collapse">
										<div class="card-body">
											Then imagine that when you breathe in you are taking in energy. The golden light now becomes brighter and brighter, the harmonies get louder and the vibrations become stronger and stronger.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<a class="card-title accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree2">Basic template information</a>
									</div>
									<div id="collapseThree2" class="collapse">
										<div class="card-body">
											Then imagine that when you breathe in you are taking in energy. The golden light now becomes brighter and brighter, the harmonies get louder and the vibrations become stronger and stronger.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- Accordions and toggles section end -->

			<!-- Icons section start -->
			<section class="shortcode-wrap shortcode-icons">
				<div class="container">
					<h5 class="cat-title">Icons</h5>
					<ul class="list-unstyled icon-list">
						<li class="icon-list__item"><span class="icon flaticon-magnifying-glass-browser"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-closed-envelope-email"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-messenger-user-avatar"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-cancel-button"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-left-chevron"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-right-chevron"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-blocked-padlock"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-thumb-up-gesture"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-map-point-pointer"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-map-location-flag"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-circular-wall-clock"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-left-arrow-sign"></span></li>
						<li class="icon-list__item"><span class="icon flaticon-right-direction"></span></li>
						<li class="icon-list__item last"><span class="icon flaticon-multimedia-music-player-play-button"></span></li>
					</ul>
				</div>
			</section>
			<!-- Icons section end -->

			<!-- Text grid section start -->
			<section class="shortcode-wrap shortcode-grid">
				<div class="container">
					<h5 class="cat-title">Text grid</h5>
					<div class="row">
						<div class="col-md-6 col-lg-3">
							<p>Some days a motivational quote can provide a quick pick-me-up for employees and even management. They can be a breath of fresh air</p>
						</div>
						<div class="col-md-6 col-lg-3">
							<p>You will undoubtedly have dreams. Whether you dream of having the perfect house with the perfect car, or you dream of settling down to</p>
						</div>
						<div class="col-md-6 col-lg-3">
							<p>Would you like to pop in a CD and have a better quality of life, and even self improvement? There are three ways you can use music to</p>
						</div>
						<div class="col-md-6 col-lg-3">
							<p>Hollywood hype would have us believe that a hypnotist can control and direct our actions, and that we can be made to do all sorts of</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<p>Motivation is the driving force behind life-enhancing change. It comes from knowing exactly what you want to do and having an insatiable, burning desire to do what’s necessary </p>
						</div>
						<div class="col-lg-4">
							<p>One of the keys to reaching your goals is to eliminate any escape routes. It is tempting to retreat to safety and comfort when challenges and difficulties arise. To avoid turning around and</p>
						</div>
						<div class="col-lg-4">
							<p>What does it take to be successful? Ask around and you will find different answers to the formula of success. The truth is, success leaves clues and you can achieve the success in the area you desire</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<p>So many of us are demotivated to achieve anything. Such people are not enthusiastic about anything. They don’t want to work towards any goal. Nothing motivates them to work. Why is it so? Why many of us are not motivated? What is wrong?</p>
						</div>
						<div class="col-lg-6">
							<p>Hollywood hype would have us believe that a hypnotist can control and direct our actions, and that we can be made to do all sorts of unimaginable things under hypnosis. Following is a list of some of these common myths which must be clarified before we proceed further.</p>
						</div>
					</div>
				</div>
			</section>
			<!-- Text grid section start -->

		</main>
		<!-- Page content section end -->	

		<!-- Footer section start -->
        <footer class="page-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-5 footer-widget footer__copy">
                        <div class="footer__logo footer-widget">
                            <a href="index.html" class="logo-title logo-title_reg">yomac</a>
                        </div>
                        <div class="textwidget">
                            <p>Perfectly to any kind of news and <br>magazine blogs. Designed responsive<br> and ready for retina.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-lg-2 footer-widget footer__page-menu">
                        <div class="widget-menu">
                            <ul class="footer-menu">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="about.jsp">About</a></li>
                                <li><a href="contact.jsp">Contacts</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 col-lg-3 footer-widget footer__cat-menu">
                        <div class="widget-menu">
                            <ul class="footer-menu">
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
                            <ul class="social-menu social-menu__left nav">
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
		<div id="to-top" class="page-to-top text-center"><span class="icon icon-left flaticon-up-arrow-sign">Page top</span></div>
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
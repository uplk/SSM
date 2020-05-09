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
	<title>Living In The Now Use It To Enrich Your Life</title>

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
			<!-- Page title section start -->
			<div class="page-head post-head" style="background-image: url('assets/img/single-contain.jpg');">
				<div class="container">
					<div class="page-head__breadcrumb">
						<ol class="breadcrumb">
							<li><a href="index.html">home</a></li>
							<li class="active">Photography</li>
						</ol>
					</div>
					<div class="row">
						<div class="col-md-8">
							<h1 class="page-head__title page-head__title_full">Living In The Now Use It To Enrich Your Life</h1>
						</div>
					</div>
				</div>
			</div>
			<!-- Page title section end -->

			<!-- New single section start -->
			<div class="new-single">
				<div class="container">
					<div class="row row-extended">
						<div class="col-lg-8">
							<article class="post">

								<div class="post__img text-center"><img src="assets/img/new-single2.jpg" alt=""></div>

								<div class="post__content">

									<p>Staying calm, composed and maintaining strong self esteem in today’s tough environment can be difficult but is not impossible if you follow a few simple guidelines. Here are 6 tips you can use as a starter guide to self improvement.</p>

									<p>Everything and everyone else around you can affect your self esteem. Other people can deliberately or inadvertently damage your self image. Unchecked people and circumstances can ultimately destroy your self esteem and pull you down in ways you won’t even notice. Don’t let these influences get the best of you. But what should you avoid?</p>

									<blockquote>You’ve heard the expression, “Just believe it and it will come.” Well, technically, that is true, however, ‘believing’ is not just thinking that you can have it; it is also feeling that it is possible.</blockquote>

									<p>For my life to get better I have to get better. For things to change I have to change. I am mine. This is my life and I am the creator of my destiny.</p>

									<div class="gallery gallery-columns-2">
										<figure class="gallery-item">
											<div class="gallery-icon landscape">
												<img src="assets/img/post-gallery1.jpg" alt="" class="medium-img">
											</div>
										</figure>
										<figure class="gallery-item">
											<div class="gallery-icon landscape">
												<img src="assets/img/post-gallery2.jpg" alt="" class="medium-img">
											</div>
										</figure>
									</div>

									<iframe src="https://player.vimeo.com/video/125829109?title=0&byline=0&portrait=0" width="750" height="430" allowfullscreen></iframe>

									<p>I can stop looking for events, people and circumstances to blame. I only need to look inside. No matter how influential you are you cannot control the circumstances and events of your life. There are only three things over which you have absolute and total control and these are all you need. It forms the total experience of life.</p>

									<h4>My thoughts, my actions and my words are always under my conscious control.</h4>

									<ul>
										<li>Hypnotherapy For Motivation Getting The Drive Back</li>
										<li>Roar With Confidence</li>
										<li>Motivational Sayings Ten Great Ones</li>
										<li>Harness The Power Of Words In Your Life</li>
									</ul>
								</div>
							</article>

							<div class="new-single__footer">
								<section class="post-tag">
									<div class="row">
										<div class="col-sm-6">
											<div class="post__tags">
												<h2 class="h4">Tags</h2>
												<div class="tag-cloud">
													<a href="category-post.jsp"><span class="label label-default animate">Photography</span></a>
													<a href="category-post.jsp"><span class="label label-default animate">Illustration</span></a>
													<a href="category-post.jsp"><span class="label label-default animate">Art</span></a>
												</div>
											</div>
										</div>
										<div class="col-sm-6 text-right">
											<div class="post__share">
												<a href="#"><img src="assets/img/share_twitter.png" alt=""></a>
												<a href="#"><img src="assets/img/share_facebook.png" alt=""></a>
											</div>
										</div>
									</div>
								</section>

								<section class="post__navigation">
									<h2 class="screen-reader-text">Post navigation</h2>
									<div class="row">
										<div class="col-sm-6">
											<div class="widget-post post__prev">
												<div class="widget-post__img">
													<a href="post-single_full.jsp"><img src="assets/img/small-post7.jpg" alt=""></a>
												</div>
												<div class="widget-post__content">
													<div class="cat-title"><a href="post-single_full.jsp"><i class="icon-xs icon-left flaticon-left-arrow-sign"></i>previous post</a></div>
													<div class="h4 widget-post__title"><a href="post-single_full.jsp">Sometimes Typhoons Come</a></div>
													<div class="widget-post__views">820</div>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="widget-post post__next text-right">
												<div class="widget-post__content">
													<div class="cat-title"><a href="post-single_full.jsp">Newer post<i class="icon-xs icon-right flaticon-right-direction"></i></a></div>
													<div class="h4 widget-post__title"><a href="post-single_full.jsp">Burn The Ships</a></div>
													<div class="widget-post__views">404</div>
												</div>
												<div class="widget-post__img">
													<a href="post-single_full.jsp"><img src="assets/img/small-post8.jpg" alt=""></a>
												</div>
											</div>
										</div>
									</div>
								</section>

								<section class="post__featured">
									<h2 class="h4 section-title">Featured  posts</h2>
									<div class="row featured-list">
										<div class="col-sm-4">
											<div class="new-item__image">
												<a href="post-single_full.jsp"><img src="assets/img/featured1.jpg" alt=""></a>
											</div>
											<div class="h4 new-item__title"><a href="post-single_full.jsp">Are You Struggling In Life</a></div>
										</div>
										<div class="col-sm-4">
											<div class="new-item__image">
												<a href="post-single_full.jsp"><img src="assets/img/new9.jpg" alt=""></a>
											</div>
											<div class="h4 new-item__title"><a href="post-single_full.jsp">Motivation The Defining Moment</a></div>
										</div>
										<div class="col-sm-4">
											<div class="new-item__image">
												<a href="post-single_full.jsp"><img src="assets/img/new12.jpg" alt=""></a>
											</div>
											<div class="h4 new-item__title"><a href="post-single_full.jsp">Learn To Love Growth Ands</a></div>
										</div>
									</div>
								</section>

								<section class="post__comments">
									<h2 class="h4 section-title">3 comments</h2>
									<ol class="comment-list">
										<li class="comment-list__item">
											<div class="comment__body">
												<div class="comment__avatar">
													<img src="assets/img/comment1.jpg" alt="">
												</div>
												<div class="comment__content">
													<div class="comment__author">Jacob Cross</div>
													<div class="comment__date">Posted at 08:49am</div>
													<div class="comment__text">The preservation of human life is the ultimate value, a pillar of ethics and the foundation of all morality. This held true in most cultures and societies throughout history.</div>
												</div>

												<div class="comment__reply">
													<button type="button" class="btn btn-link animate">Reply</button>
												</div>
											</div>
											<ol class="comment-list children">
												<li class="comment-list__item">
													<div class="comment__body">
														<div class="comment__avatar">
															<img src="assets/img/comment2.jpg" alt="">
														</div>
														<div class="comment__content">
															<div class="comment__author">Darrell Hardy</div>
															<div class="comment__date">Posted at 11:42pm</div>
															<div class="comment__text">If you are an entrepreneur, you know that your success cannot depend on the opinions of others. Like the wind, opinions change.</div>
														</div>

														<div class="comment__reply">
															<button type="button" class="btn btn-link animate">Reply</button>
														</div>
													</div>
												</li>
											</ol>
										</li>
										<li class="comment-list__item">
											<div class="comment__body">
												<div class="comment__avatar">
													<img src="assets/img/comment3.jpg" alt="">
												</div>
												<div class="comment__content">
													<div class="comment__author">Gavin Edwards</div>
													<div class="comment__date">Posted at 12:51am</div>
													<div class="comment__text">Be careful what you believe because that is what you will experience. Your belief system is a mechanism which is uniquely yours. It is powered by your desire and controlled by your thoughts and actions. In other words, your success is measured by the strength of your belief.</div>
												</div>
												<div class="comment__reply">
													<button type="button" class="btn btn-link animate">Reply</button>
												</div>
											</div>
										</li>
									</ol>
									<div class="comment__respond">
										<h4 class="section-title">post a comment</h4>
										<form class="comment-form">
											<div class="form-group row form-row">
												<div class="col-sm-6 form-col">
													<input type="text" class="form-control" placeholder="Name *">
												</div>
												<div class="col-sm-6 form-col">
													<input type="email" class="form-control" placeholder="E-mail *">
												</div>
											</div>
											<div class="form-group">
												<input type="text" class="form-control" placeholder="Website">
											</div>
											<div class="form-group">
												<textarea rows="6" class="form-control" placeholder="Your message"></textarea>
											</div>
											<div class="row">
												<div class="col-md-4">
													<input type="submit" class="btn btn-primary btn-submit animate" value="Post comment" />
												</div>
											</div>
										</form>

									</div>
								</section>
							</div>
						</div>

						<aside class="sidebar col-lg-4">
							<div class="widget-sidebar">
								<div class="widget-sidebar__title">Most popular</div>
								<ul class="widget-post-list">
									<li class="widget-post">
										<div class="widget-post__img">
											<a href="post-single_sidebar.jsp"><img src="assets/img/small-post6.jpg" alt=""></a>
										</div>
										<div class="widget-post__content">
											<div class="cat-title"><a href="category-post.jsp">Art &amp; Illustration</a></div>
											<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">When The Morning Dawns</a></div>
											<div class="widget-post__views">820</div>
										</div>
									</li>
									<li class="widget-post">
										<div class="widget-post__img">
											<a href="post-single_sidebar.jsp"><img src="assets/img/small-post2.jpg" alt=""></a>
										</div>
										<div class="widget-post__content">
											<div class="cat-title"><a href="category-post.jsp">Graphic Design</a></div>
											<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Comment On The Importance</a></div>
											<div class="widget-post__views">404</div>
										</div>
									</li>
									<li class="widget-post">
										<div class="widget-post__img">
											<a href="post-single_sidebar.jsp"><img src="assets/img/small-post3.jpg" alt=""></a>
										</div>
										<div class="widget-post__content">
											<div class="cat-title"><a href="category-post.jsp">Furniture</a></div>
											<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">The Bright Side Of Life</a></div>
											<div class="widget-post__views">125</div>
										</div>
									</li>
									<li class="widget-post">
										<div class="widget-post__img">
											<a href="post-single_sidebar.jsp"><img src="assets/img/small-post4.jpg" alt=""></a>
										</div>
										<div class="widget-post__content">
											<div class="cat-title"><a href="category-post.jsp">Fashion</a></div>
											<div class="h4 widget-post__title"><a href="post-single_sidebar.jsp">Philosophy As A Science</a></div>
											<div class="widget-post__views">987</div>
										</div>
									</li>
									<li class="widget-post">
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
							<div class="widget-sidebar">
								<div class="widget-sidebar__title">Latest tweet</div>
								<div class="widget-twitter widget-socialnet">
									<div class="social-user"><i class="mdi mdi-twitter"></i><a href="#">@HelloYomac</a></div>
									<div class="social-content">The best way to start Friday is... to read Yomac blog! Check out our latest articles — "Fashion… </div>
									<a href="https://www.instagram.com/p/Bafe5G4/" class="tweet-link">https://www.instagram.com/p/Bafe5G4/</a>
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
								<div class="widget-newsletter widget-newsletter_fill">
									<h2 class="newsletter__title">Newsletter</h2>
									<p class="widget-newsletter__fill-text">Enter your email address to receive all news, special offers and other information.</p>
									<form action="/" class="light-form">
										<div class="widget-newsletter__fill-form input-group">
											<input type="text" class="form-control" placeholder="Your e-mail">
											<span class="input-group-btn">
												<button type="submit" class="btn btn-primary animate">Subscribe</button>
											</span>
										</div>
									</form>
								</div>
							</div>


						</aside>
					</div>
				</div>
			</div>
			<!-- News primary section end -->

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
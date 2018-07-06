<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미술관</title>
<meta name="description" content="Free Bootstrap Theme by uicookies.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500"
	rel="stylesheet">
<link rel="stylesheet" href="/myhome1/resources/css/styles-merged.css">
<link rel="stylesheet" href="/myhome1/resources/css/style.min.css">
<link rel="stylesheet" href="/myhome1/resources/css/custom.css">
<link rel="stylesheet" href="/myhome1/resources/css/animate.css">

<!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
</head>

<style>
body {
	background-color: #ffe6e6;
}
</style>

<body>

	<!-- START: header -->
	<header role="banner" class="probootstrap-header">
		<div class="container-fluid">
			<a href="index.html" class="probootstrap-logo">Art Museum 미술관<span>.</span></a>

			<a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
			<div class="mobile-menu-overlay"></div>

			<nav role="navigation" class="probootstrap-nav hidden-xs">
				<ul class="probootstrap-main-nav">
					<li><a href="home.mt">메인</a></li>
					<li><a href="about.mt">소개</a></li>
					<li class="active"><a href="museum.mt">미술관</a></li>
					<li><a href="artwork.mt">작품</a></li>
					<li><a href="schedule.mt">전시일정</a></li>
					<li><a href="board/list.mt">게시판</a></li>
					<li><a href="contact.mt">연락</a></li>
				</ul>
				<div class="extra-text visible-xs">
					<a href="#" class="probootstrap-burger-menu"><i>Menu</i></a>
					<h5>Social</h5>
					<ul class="social-buttons">
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-instagram2"></i></a></li>
					</ul>
					<p>
						<small>&copy; Copyright 2017 uiCookies:Format. All Rights
							Reserved.</small>
					</p>
				</div>
			</nav>
		</div>
	</header>
	<!-- END: header -->

	<!-- login -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<!--					<div class="box-header with-border">
 
						<h3 class="box-title">Home Page</h3>
					</div>
				</div>

				<div class="box" />
				<a href="/myhome1/board/list.mt">게시판</a>
			</div> -->
					</br> </br> </br>
					<c:if test="${email==null || email==''}">
						<div class="box" />
						<a href="/myhome1/member/logon.mt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인</a>
				</div>
				&nbsp;&nbsp;
				<div class="box" />
				<a href="/myhome1/member/member_write.mt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원가입</a>
			</div>
			</c:if>

			<c:if test="${email!=null && email!=''}">
				<%-- 			이름 : ${username} <br>
			이메일 : ${email} <br>
			모바일 : ${mobile} <br>
 --%>
 			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디 : ${member_id} <br>
				<div class="box" />
				<a href="/myhome1/member/logout.mt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그아웃</a>
		</div>
		</c:if>
		</div>
	</section>

	<!-- login -->


	<!-- START: section -->
	<section class="probootstrap-intro"
		style="background-image: url(img/hero_bg_2.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="container-fluid">
			<div class="row">
				<p align="center">
					<iframe
						src="https://www.google.com/maps/d/embed?mid=1mk6wwiBOp5ARRCBeq9OZBXth607Qq-b0"
						width="1024" height="768"></iframe>
			</div>

		</div>
		</div>
		</div>

	</section>
	<!-- END: section -->


	<section id="next-section">
		<div class="container-fluid">
			<div class="row probootstrap-gutter0">
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_1.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Beautiful Office</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_2.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Drawning In The Blue Water</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_3.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Prominent Building</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_4.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Pink Lips</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_5.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>House With Orange Window</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_6.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Explorer Guy In The East</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>

				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_1.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Beautiful Office</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_2.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Drawning In The Blue Water</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_3.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Prominent Building</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_4.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Pink Lips</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_5.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>House With Orange Window</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>
				<div class="col-md-4 col-sm-6">
					<a href="portfolio-single.html" class="probootstrap-hover-overlay">
						<img src="img/img_6.jpg"
						alt="Free Bootstrap Template by uicookies.com"
						class="img-responsive">
						<div class="probootstrap-text-overlay">
							<h3>Explorer Guy In The East</h3>
							<p>Website, Photography</p>
						</div>
					</a>
				</div>

			</div>
		</div>
	</section>



	<!-- START: section -->
	<section class="probootstrap-section probootstrap-section-colored">
		<div class="container">
			<div class="row text-center">
				<div
					class="col-lg-8 col-md-offset-2 mb30 section-heading probootstrap-animate">
					<h2>Let's Work Together</h2>
					<p class="lead">Far far away, behind the word mountains, far
						from the countries Vokalia and Consonantia, there live the blind
						texts. Separated they live in Bookmarksgrove right at the coast of
						the Semantics, a large language ocean.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4 probootstrap-animate">
					<p class="text-center">
						<a href="#" class="btn btn-ghost btn-ghost-white btn-lg btn-block"
							role="button">Contact Us</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- END: section -->




	<!-- START: footer -->
	<footer role="contentinfo" class="probootstrap-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="probootstrap-footer-widget">
						<h3>About Format</h3>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia. It is a paradisematic country,
							in which roasted parts of sentences fly into your mouth.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
					<div class="probootstrap-footer-widget">
						<h3>Connect With Us</h3>
						<ul class="probootstrap-footer-social">
							<li><a href=""><i class="icon-twitter"></i></a></li>
							<li><a href=""><i class="icon-facebook"></i></a></li>
							<li><a href=""><i class="icon-instagram2"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="probootstrap-footer-widget">
						<h3>Popular Products</h3>
						<ul class="probootstrap-product-list">
							<li class="mb20"><a href="#">
									<figure>
										<img src="img/img_3.jpg"
											alt="Free Bootstrap Template by uicookies.com"
											class="img-responsive">
									</figure>
									<div class="text">
										<h4>River named Duden flows</h4>
										<p>A small river named Duden flows by their place</p>
										<p class="secondary-color rate">
											<i class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-half"></i>
										</p>
									</div>
							</a></li>
							<li class="mb20"><a href="#">
									<figure>
										<img src="img/img_4.jpg"
											alt="Free Bootstrap Template by uicookies.com"
											class="img-responsive">
									</figure>
									<div class="text">
										<h4>River named Duden flows</h4>
										<p>A small river named Duden flows by their place</p>
										<p class="secondary-color rate">
											<i class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-half"></i>
										</p>
									</div>
							</a></li>
							<li class="mb20"><a href="#">
									<figure>
										<img src="img/img_5.jpg"
											alt="Free Bootstrap Template by uicookies.com"
											class="img-responsive">
									</figure>
									<div class="text">
										<h4>River named Duden flows</h4>
										<p>A small river named Duden flows by their place</p>
										<p class="secondary-color rate">
											<i class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-full"></i><i class="icon-star-full"></i><i
												class="icon-star-half"></i>
										</p>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="probootstrap-footer-widget">
						<h3>Recent Post</h3>
						<ul class="probootstrap-blog-list">
							<li><a href="#">
									<figure>
										<img src="img/img_1.jpg"
											alt="Free Bootstrap Template by uicookies.com"
											class="img-responsive">
									</figure>
									<div class="text">
										<h4>River named Duden flows</h4>
										<p>A small river named Duden flows by their place</p>
									</div>
							</a></li>
							<li><a href="#">
									<figure>
										<img src="img/img_2.jpg"
											alt="Free Bootstrap Template by uicookies.com"
											class="img-responsive">
									</figure>
									<div class="text">
										<h4>River named Duden flows</h4>
										<p>A small river named Duden flows by their place</p>
									</div>
							</a></li>
							<li><a href="#">
									<figure>
										<img src="img/img_3.jpg"
											alt="Free Bootstrap Template by uicookies.com"
											class="img-responsive">
									</figure>
									<div class="text">
										<h4>River named Duden flows</h4>
										<p>A small river named Duden flows by their place</p>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row mt40">
				<div class="col-md-12 text-center">
					<p>
						<small>&copy; 2018 <a href="https://uicookies.com/"
							target="_blank">Art Museum 미술관</a>. All Rights Reserved. <br>
							Designed &amp; Developed by <a href="https://uicookies.com/"
							target="_blank">Sungtaek</a> Demo Images: Unsplash
						</small><br> <a href="#" class="js-backtotop">Back to top</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- END: footer -->

	<script src="js/scripts.min.js"></script>
	<script src="js/main.min.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>
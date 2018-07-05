<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Art Museum 미술관</title>
<meta name="description" content="Free Bootstrap Theme by uicookies.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link rel="stylesheet" href="/myhome1/resources/css/styles-merged.css">
<link rel="stylesheet" href="/myhome1/resources/css/style.min.css">
<link rel="stylesheet" href="/myhome1/resources/css/custom.css">
<link rel="stylesheet" href="/myhome1/resources/css/animate.css">

<!--[if lt IE 9]>
      <script src="/myhome1/resources/js/vendor/html5shiv.min.js"></script>
      <script src="/myhome1/resources/js/vendor/respond.min.js"></script>
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
			<a href="home.mt" class="probootstrap-logo">Art Museum 미술관<span>.</span></a>

			<a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
			<div class="mobile-menu-overlay"></div>

			<nav role="navigation" class="probootstrap-nav hidden-xs">
				<ul class="probootstrap-main-nav">
					<li class="active"><a href="home.mt">메인</a></li>
					<li><a href="about.mt">소개</a></li>
					<li><a href="museum.mt">미술관</a></li>
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
		style="background-image: url(/myhome1/resources/img/서울시립미술관_본관.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-7 probootstrap-intro-text">
					<h1 class="probootstrap-animate">Art Museum 미술관</h1>
					<div class="probootstrap-subtitle probootstrap-animate">
						<h2>
							서울시립미술관 본관의 전경 <a href="http://sema.seoul.go.kr" target="_blank">(링크)</a>
						</h2>
					</div>
					<p class="watch-intro probootstrap-animate">
						<a href="https://www.youtube.com/watch?v=tjwA4YvI_ho"
							class="popup-vimeo"> Watch the video <i class="icon-play2"></i></a>
					</p>
				</div>
			</div>
		</div>
		<a class="probootstrap-scroll-down js-next" href="#next-section">Scroll
			down <i class="icon-chevron-down"></i>
		</a>
	</section>


	<div class="container">
		<div class="row">
			<div
				class="col-lg-12 col-md-12 mb70 section-heading probootstrap-animate">
				<h2>서울시립미술관 서소문본관의 전경</h2>
				<p class="lead">서울 중구 덕수궁길에 있는 미술관</p>
			</div>
		</div>
		<!-- END: section -->


		<section id="next-section">
			<div class="container-fluid">
				<div class="row probootstrap-gutter0">
					<div class="col-md-4 col-sm-6">
						<a href="portfolio-single.html" class="probootstrap-hover-overlay">
							<img src="/myhome1/resources/img/img_1.jpg"
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
							<img src="/myhome1/resources/img/img_2.jpg"
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
							<img src="/myhome1/resources/img/img_3.jpg"
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
							<img src="/myhome1/resources/img/img_4.jpg"
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
							<img src="/myhome1/resources/img/img_5.jpg"
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
							<img src="/myhome1/resources/img/img_6.jpg"
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
		<section class="probootstrap-section">
			<div class="container">
				<div class="row">
					<div
						class="col-lg-12 col-md-12 mb70 section-heading probootstrap-animate">
						<h2>Our Services</h2>
						<p class="lead">Far far away, behind the word mountains, far
							from the countries Vokalia and Consonantia, there live the blind
							texts. Separated they live in Bookmarksgrove right at the coast
							of the Semantics, a large language ocean.</p>
					</div>
				</div>
				<div class="row mb70">
					<div class="col-md-4 probootstrap-animate">
						<div class="probootstrap-box">
							<div class="icon text-center">
								<i class="icon-tools2"></i>
							</div>
							<h3>Interface Design</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
							<ul class="text-left with-icon colored">
								<li><i class="icon-radio-checked"></i> <span>A small
										river named Duden</span></li>
								<li><i class="icon-radio-checked"></i> <span>Place
										and supplie</span></li>
								<li><i class="icon-radio-checked"></i> <span>Roasted
										parts of sentences</span></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 probootstrap-animate">
						<div class="probootstrap-box">
							<div class="icon text-center">
								<i class="icon-desktop"></i>
							</div>
							<h3>User Experience</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
							<ul class="text-left with-icon colored">
								<li><i class="icon-radio-checked"></i> <span>A small
										river named Duden</span></li>
								<li><i class="icon-radio-checked"></i> <span>Place
										and supplie</span></li>
								<li><i class="icon-radio-checked"></i> <span>Roasted
										parts of sentences</span></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 probootstrap-animate">
						<div class="probootstrap-box">
							<div class="icon text-center">
								<i class="icon-lightbulb"></i>
							</div>
							<h3>Product Strategy</h3>
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
							<ul class="text-left with-icon colored">
								<li><i class="icon-radio-checked"></i> <span>A small
										river named Duden</span></li>
								<li><i class="icon-radio-checked"></i> <span>Place
										and supplie</span></li>
								<li><i class="icon-radio-checked"></i> <span>Roasted
										parts of sentences</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-md-offset-4 probootstrap-animate">
						<p class="text-center">
							<a href="#" class="btn btn-primary btn-lg btn-block"
								role="button">View All Services</a>
						</p>
					</div>
				</div>
			</div>
		</section>
		<!-- END: section -->


		<!-- START: section -->
		<section class="probootstrap-section probootstrap-section-colored">
			<div class="container">
				<div class="row">
					<div
						class="col-lg-12 col-md-12 mb70 section-heading probootstrap-animate">
						<h2>Our Product</h2>
						<p class="lead">Far far away, behind the word mountains, far
							from the countries Vokalia and Consonantia, there live the blind
							texts. Separated they live in Bookmarksgrove right at the coast
							of the Semantics, a large language ocean.</p>
					</div>
				</div>
				<div class="row mb70">
					<div class="col-md-4 probootstrap-animate">
						<div class="probootstrap-block-image">
							<figure>
								<a href="#"><img src="/myhome1/resources/img/img_1.jpg"
									alt="Free Bootstrap Template by uicookies.com"></a>
							</figure>
							<div class="text">
								<h3 class="mb30">
									<a href="#">Duden Flows by Their Place</a>
								</h3>
								<p class="dark">A small river named Duden flows by their
									place and supplies it with the necessary regelialia. It is a
									paradisematic country, in which roasted parts of sentences fly
									into your mouth.</p>
								<p class="secondary-color rate">
									<i class="icon-star-full"></i><i class="icon-star-full"></i><i
										class="icon-star-full"></i><i class="icon-star-full"></i><i
										class="icon-star-half"></i>
								</p>
								<hr>
								<p class="clearfix like">
									<a class="pull-left" href="#"><i class="icon-thumbs-up"></i>
										5,216</a> <a class="pull-right" href="#"><i
										class="icon-thumbs-down"></i> 32</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 probootstrap-animate">
						<div class="probootstrap-block-image">
							<figure>
								<img src="/myhome1/resources/img/img_2.jpg"
									alt="Free Bootstrap Template by uicookies.com">
							</figure>
							<div class="text">
								<h3 class="mb30">
									<a href="#">Fly Into Your Mouth</a>
								</h3>
								<p class="dark">A small river named Duden flows by their
									place and supplies it with the necessary regelialia. It is a
									paradisematic country, in which roasted parts of sentences fly
									into your mouth.</p>
								<p class="secondary-color rate">
									<i class="icon-star-full"></i><i class="icon-star-full"></i><i
										class="icon-star-full"></i><i class="icon-star-full"></i><i
										class="icon-star-half"></i>
								</p>
								<hr>
								<p class="clearfix like">
									<a class="pull-left" href="#"><i class="icon-thumbs-up"></i>
										4,923</a> <a class="pull-right" href="#"><i
										class="icon-thumbs-down"></i> 12</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 probootstrap-animate">
						<div class="probootstrap-block-image">
							<figure>
								<img src="/myhome1/resources/img/img_3.jpg"
									alt="Free Bootstrap Template by uicookies.com">
							</figure>
							<div class="text">
								<h3 class="mb30">
									<a href="#">Roasted Parts of Sentences</a>
								</h3>
								<p class="dark">A small river named Duden flows by their
									place and supplies it with the necessary regelialia. It is a
									paradisematic country, in which roasted parts of sentences fly
									into your mouth.</p>
								<p class="secondary-color rate">
									<i class="icon-star-full"></i><i class="icon-star-full"></i><i
										class="icon-star-full"></i><i class="icon-star-full"></i><i
										class="icon-star-half"></i>
								</p>
								<hr>
								<p class="clearfix like">
									<a class="pull-left" href="#"><i class="icon-thumbs-up"></i>
										19,552</a> <a class="pull-right" href="#"><i
										class="icon-thumbs-down"></i> 7</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-md-offset-4 probootstrap-animate">
						<p class="text-center">
							<a href="#"
								class="btn btn-ghost btn-ghost-white btn-lg btn-block"
								role="button">View All Products</a>
						</p>
					</div>
				</div>
			</div>
		</section>
		<!-- END: section -->


		<!-- START: section -->
		<section class="probootstrap-section probootstrap-section-dark">
			<div class="container">
				<div class="row">
					<div
						class="col-md-8 col-md-offset-2 section-heading mb50 text-center probootstrap-animate">
						<h2>More Benefits</h2>
						<p class="lead">A small river named Duden flows by their place
							and supplies it with the necessary regelialia. It is a
							paradisematic country, in which roasted parts of sentences fly
							into your mouth.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-6 col-xs-12 probootstrap-animate">
						<h3 class="heading-with-icon">
							<i class="icon-heart2"></i> <span>We bring emotion</span>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12 probootstrap-animate">
						<h3 class="heading-with-icon">
							<i class="icon-rocket"></i> <span>We guide companies</span>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-12 probootstrap-animate">
						<h3 class="heading-with-icon">
							<i class="icon-image"></i> <span>We design extraordinary</span>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
					<div class="clearfix visible-md-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-12 probootstrap-animate">
						<h3 class="heading-with-icon">
							<i class="icon-briefcase"></i> <span>We bring emotion</span>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4 col-sm-6 col-xs-12 probootstrap-animate">
						<h3 class="heading-with-icon">
							<i class="icon-chat"></i> <span>We guide companies</span>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-12 probootstrap-animate">
						<h3 class="heading-with-icon">
							<i class="icon-colours"></i> <span>We design extraordinary</span>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
					<div class="clearfix visible-sm-block"></div>
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
							<p>A small river named Duden flows by their place and
								supplies it with the necessary regelialia. It is a paradisematic
								country, in which roasted parts of sentences fly into your
								mouth.</p>
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
											<img src="/myhome1/resources/img/img_3.jpg"
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
											<img src="/myhome1/resources/img/img_4.jpg"
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
											<img src="/myhome1/resources/img/img_5.jpg"
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
											<img src="/myhome1/resources/img/img_1.jpg"
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
											<img src="/myhome1/resources/img/img_2.jpg"
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
											<img src="/myhome1/resources/img/img_3.jpg"
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
		<script src="/myhome1/resources/js/scripts.min.js"></script>
		<script src="/myhome1/resources/js/main.min.js"></script>
		<script src="/myhome1/resources/js/custom.js"></script>
</body>
</html>


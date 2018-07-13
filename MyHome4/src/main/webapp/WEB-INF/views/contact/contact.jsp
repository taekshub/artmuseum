<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../include/common.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>연락</title>
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

	<!-- START: header, login -->
	<%@include file="../include/header.jsp"%>
	<!-- End: header, login -->

	<!-- START: section -->
	<section class="probootstrap-intro"
		style="background-image: url(img/hero_bg_2.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-7 probootstrap-intro-text">
					<h1 class="probootstrap-animate">Contact</h1>
					<div class="probootstrap-subtitle probootstrap-animate">
						<h2>
							A free html website template for creative agency like you!
							brought to you by <a href="https://uicookies.com/"
								target="_blank">uicookies.com</a>
						</h2>
					</div>
					<p class="watch-intro probootstrap-animate">
						<a href="https://vimeo.com/45830194" class="popup-vimeo">Watch
							the video <i class="icon-play2"></i>
						</a>
					</p>
				</div>
			</div>
		</div>
		<a class="probootstrap-scroll-down js-next" href="#next-section">Scroll
			down <i class="icon-chevron-down"></i>
		</a>
	</section>
	<!-- END: section -->

	<section id="next-section" class="probootstrap-section">
		<div class="container">

			<div class="row mb60">
				<div class="col-md-8 col-md-offset-2 probootstrap-animate">
					<form action="#" method="post" class="probootstrap-form">
						<div class="form-group">
							<label for="name">Full Name</label> <input type="text"
								class="form-control" id="name" name="name">
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input type="email"
								class="form-control" id="email" name="email">
						</div>
						<div class="form-group">
							<label for="subject">Subject</label> <input type="text"
								class="form-control" id="subject" name="subject">
						</div>
						<div class="form-group">
							<label for="message">Message</label>
							<textarea cols="30" rows="10" class="form-control" id="message"
								name="message"></textarea>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" id="submit"
								name="submit" value="Send Message">
						</div>
					</form>
				</div>

			</div>

			<div class="row">
				<div class="col-md-4">
					<h3>New York</h3>
					<ul class="probootstrap-contact-info">
						<li><i class="icon-location2"></i> <span>198 West 21th
								Street, Suite 721 New York NY 10016</span></li>
						<li><i class="icon-mail"></i><span>info@domain.com</span></li>
						<li><i class="icon-phone2"></i><span>+123 456 7890</span></li>
					</ul>
				</div>
				<div class="col-md-4">
					<h3>London</h3>
					<ul class="probootstrap-contact-info">
						<li><i class="icon-location2"></i> <span>198 West 21th
								Street, Suite 721 New York NY 10016</span></li>
						<li><i class="icon-mail"></i><span>info@domain.com</span></li>
						<li><i class="icon-phone2"></i><span>+123 456 7890</span></li>
					</ul>
				</div>
				<div class="col-md-4">
					<h3>Australia</h3>
					<ul class="probootstrap-contact-info">
						<li><i class="icon-location2"></i> <span>198 West 21th
								Street, Suite 721 New York NY 10016</span></li>
						<li><i class="icon-mail"></i><span>info@domain.com</span></li>
						<li><i class="icon-phone2"></i><span>+123 456 7890</span></li>
					</ul>
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
	<%@include file="../include/footer.jsp"%>
	<!-- END: footer -->


	<script src="js/scripts.min.js"></script>
	<script src="js/main.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>
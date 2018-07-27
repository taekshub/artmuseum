<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="include/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Art Museum 미술관</title>
<meta name="description" content="Free Bootstrap Theme by uicookies.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500"
	rel="stylesheet">
<link rel="stylesheet" href="/ArtMM/resources/css/styles-merged.css">
<link rel="stylesheet" href="/ArtMM/resources/css/style.min.css">
<link rel="stylesheet" href="/ArtMM/resources/css/custom.css">
<link rel="stylesheet" href="/ArtMM/resources/css/animate.css">

<!--[if lt IE 9]>
      <script src="/ArtMM/resources/js/vendor/html5shiv.min.js"></script>
      <script src="/ArtMM/resources/js/vendor/respond.min.js"></script>
    <![endif]-->

</head>

<style>
body {
	background-color: #ffe6e6;
}
</style>

<body>

	<!-- START: header, login -->
	<%@include file="include/header.jsp"%>
	<!-- End: header, login -->


	<!-- START: section -->
	<section class="probootstrap-intro"
		style="background-image: url(/ArtMM/resources/img/서울시립미술관_본관.jpg);"
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




		<!-- START: footer -->
		<%@include file="include/footer.jsp"%>
		<!-- END: footer -->


		<script src="/ArtMM/resources/js/scripts.min.js"></script>
		<script src="/ArtMM/resources/js/main.min.js"></script>
		<script src="/ArtMM/resources/js/custom.js"></script>
</body>
</html>


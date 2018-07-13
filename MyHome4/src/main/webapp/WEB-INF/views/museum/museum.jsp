<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../include/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미술관_지도로 보기</title>
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
.probootstrap-intro{
	padding: 20px 20px;
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
				<p align="center">
					<iframe
						src="https://www.google.com/maps/d/embed?mid=1mk6wwiBOp5ARRCBeq9OZBXth607Qq-b0"
						width="1024" height="768"></iframe>
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
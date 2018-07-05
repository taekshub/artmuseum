<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free Bootstrap Theme by uicookies.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500"
	rel="stylesheet">

<link rel="stylesheet" href="/myhome1/resources/css/styles-merged.css">
<link rel="stylesheet" href="/myhome1/resources/css/style.min.css">
<link rel="stylesheet" href="/myhome1/resources/css/custom.css">
<link rel="stylesheet" href="/myhome1/resources/css/animate.css">


<style>
body {
	background-color: #ffe6e6;
}
</style>
<body>

	<!-- header S -->
	<header role="banner" class="probootstrap-header">
		<div class="container-fluid">
			<a href="/myhome1/home.mt" class="probootstrap-logo">Art Museum 미술관<span>.</span></a>

			<a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
			<div class="mobile-menu-overlay"></div>

			<nav role="navigation" class="probootstrap-nav hidden-xs">
				<ul class="probootstrap-main-nav">
					<li><a href="/myhome1/home.mt">메인</a></li>
					<li><a href="/myhome1/about.mt">소개</a></li>
					<li><a href="/myhome1/museum.mt">미술관</a></li>
					<li><a href="/myhome1/artwork.mt">작품</a></li>
					<li><a href="/myhome1/schedule.mt">전시일정</a></li>
					<li class="active"><a href="/myhome1/board/list.mt">게시판</a></li>
					<li><a href="/myhome1/contact.mt">연락</a></li>
				</ul>
				<div class="extra-text visible-xs">
					<a href="#" class="probootstrap-burger-menu"><i>Menu</i></a>
					<h5>Social</h5>
					<ul class="social-buttons">
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-instagram2"></i></a></li>
					</ul>



					<!-- member S -->
					<div class="member">

						<dl>
							<dt>Administrator</dt>
							<dd>${username}</dd>
							<dd class="last">
								<a href="#" class="btn"><img
									src="${commonURL}/resources/images/admin/header/logout.gif"
									width="50" height="22" alt="Logout" /></a>
							</dd>
						</dl>

					</div>
					<!-- member E -->

					<!-- nav S -->
					<div id="nav">

						<ul>
							<li class="on"><a href="#">공지사항</a></li>
							<li class="off"><a href="#">자유게시판</a></li>
						</ul>

					</div>
					<!-- nav E -->

				</div>
				<!-- header E -->
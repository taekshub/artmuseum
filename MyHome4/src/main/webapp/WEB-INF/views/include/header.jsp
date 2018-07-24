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

<link rel="stylesheet" href="/ArtMM/resources/css/styles-merged.css">
<link rel="stylesheet" href="/ArtMM/resources/css/style.min.css">
<link rel="stylesheet" href="/ArtMM/resources/css/custom.css">
<link rel="stylesheet" href="/ArtMM/resources/css/animate.css">


<style>
body {
	background-color: #ffe6e6;
}
</style>
<body>

	<header role="banner" class="probootstrap-header">

		<div class="container-fluid">
			<a href="/ArtMM/home.mt" class="probootstrap-logo">Art Museum
				미술관<span>.</span>

			</a> <a href="#" class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
			<div class="mobile-menu-overlay"></div>

			<nav role="navigation" class="probootstrap-nav hidden-xs">
				<ul class="probootstrap-main-nav">
					<li><a href="/ArtMM/home.mt">메인</a></li>
					<li><a href="/ArtMM/about.mt">소개</a></li>
					<li><a href="/ArtMM/museum.mt">미술관</a>
						<ul>
							<li><a href="/ArtMM/museum.mt">지도</a>
							<li><a href="/ArtMM/museum2.mt">그림</a>
						</ul></li>
					<li><a href="/ArtMM/artwork/list.mt">작품</a></li>
					<li><a href="/ArtMM/schedule.mt">전시일정</a></li>
					<li><a href="/ArtMM/board/list.mt">게시판</a> <!-- <li class="active"> -->
						<ul>
							<li><a href="/ArtMM/board/list2.mt">Q&A</a>
							<li><a href="/ArtMM/board/list.mt">자유게시판</a>
						</ul>
					<li><a href="/ArtMM/contact.mt">연락</a></li>
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
	<section id="pagetitle">
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<!--					<div class="box-header with-border">
 
						<h3 class="box-title">Home Page</h3>
					</div>
				</div>

				<div class="box" />
				<a href="/ArtMM/artwork/list.mt">게시판</a>
			</div> -->
					</br> </br> </br>
					<c:if test="${email==null || email==''}">
						<div class="box" />
						<a href="/ArtMM/member/logon.mt">로그인&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;</a>
				</div>
				&nbsp;&nbsp;
				<div class="box" />
				<a href="/ArtMM/member/member_write.mt">회원가입&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;</a>
			</div>
			</c:if>

			<c:if test="${email!=null && email!=''}">
				<%-- 			이름 : ${username} <br>
			이메일 : ${email} <br>
			모바일 : ${mobile} <br>
 --%>
 			   아이디 : ${member_id}&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<br>
				<div class="box" />
				<a href="/ArtMM/member/logout.mt">로그아웃&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;</a>
		</div>
		</c:if>
		</div>
	</section>
	<!-- header E -->
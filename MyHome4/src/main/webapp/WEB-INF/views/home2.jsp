<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--   -->
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Home Page</h3>
				</div>
			</div>

			<div class="box" />
			<a href="/myhome1/board/list.mt">게시판으로 가기</a>
		</div>

		<c:if test="${email==null || email==''}">
			<div class="box" />
			<a href="/myhome1/member/logon.mt">로그온</a>
	</div>
	<div class="box" />
	<a href="/myhome1/member/member_write.mt"> 회원가입</a>
	</div>
	</c:if>

	<c:if test="${email!=null && email!=''}">	
			이름 : ${username} <br>
			이메일 : ${email} <br>
			모바일 : ${mobile} <br>
			사용자아이디 : ${member_id} <br>
		<div class="box" />
		<a href="/myhome1/member/logout.mt">로그아웃</a>
		</div>
	</c:if>
	</div>
</section>


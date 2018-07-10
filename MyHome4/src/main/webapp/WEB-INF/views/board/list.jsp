<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="java.util.*"%>
<%@page import="com.multi.myhome1.board.dto.*"%>
<%@page import="com.multi.myhome1.common.*"%>

<%@include file="../include/common.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판</title>
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
      <script src="/myhome1/resources/js/vendor/html5shiv.min.js"></script>
      <script src="/myhome1/resources/js/vendor/respond.min.js"></script>
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





	<!-- nav S -->
	<div id="nav">

		<ul>
			<li class="on"><a href="#">공지사항</a></li>
			<li class="off"><a href="#">자유게시판</a></li>
		</ul>

	</div>
	<!-- nav E -->






	<form name="mform" id="mform">
		<input type="hidden" name="pg" value="<%=pg%>" id="pg" /> <input
			type="hidden" name="mode" id="mode" /> <input type="hidden"
			name="seq" id="seq" />

		<!-- site align S -->
		<div class="sa">


			<!-- section S -->
			<div id="section">
				<div id="pagetitle">
					<h2>게 시 판</h2>
				</div>

				<div id="content">



					<h3>공지사항</h3>

					<!-- bbs search S -->
					<div class="bs">
						<fieldset>
							<legend class="desc">Search</legend>

							<h3>
								<img
									src="${commonURL}/resources/images/board/def/search_title.gif"
									width="46" height="9" alt="search" />
							</h3>
							<p>
								<label for="sel" class="desc">Target</label> <select id="sel"
									name="sel">
									<option value="all" <%if (sel.equals("all")) {%> selected <%}%>>전체</option>
									<option value="title" <%if (sel.equals("title")) {%> selected
										<%}%>>제목</option>
									<option value="contents" <%if (sel.equals("contents")) {%>
										selected <%}%>>내용</option>
								</select> <label for="key" class="desc">Keyword</label> <input
									type="text" id="key" name="key" class="keyword" size="30"
									value="<%=key%>" /> <span class="inbtn inputBtn"><input
									type="button" onclick="goSearch()" class="submit"
									value="Search" /></span>
							</p>

						</fieldset>
					</div>
					<!-- bbs search E -->

					<!-- bbs header S -->
					<div class="bhd">
						<p class="fl">
							<strong>${total}</strong> 의 게시물이 있습니다.
						</p>
					</div>
					<!-- bbs header E -->




					<!-- bbs default list S -->
					<table cellspacing="0" summary="[게시판명 프로그램입력]의 게시물 목록 입니다."
						class="bdl">
						<caption class="desc">[게시판명 프로그램입력] 목록</caption>
						<colgroup>
							<col width="8%" />
							<col width="*" />
							<col width="10%" />
							<col width="12%" />
							<col width="8%" />
							<col width="14%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="first">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">작성일</th>
								<th scope="col">조회</th>
								<th scope="col" class="last">비고</th>
							</tr>
						</thead>

						<tbody>
							<%
								List<BoardDto> list = (List<BoardDto>) request.getAttribute("list");
								int total = (Integer) request.getAttribute("total");
								for (int i = 0; i < list.size(); i++) {
									BoardDto item = list.get(i);
									int num = total - Integer.parseInt(item.getNum()) + 1;
									String url = commonURL + "/board/view.mt?seq=" + item.getSeq() + "&sel=" + sel + "&key=" + key;

									String reply = "";
									for (int j = 0; j < Integer.parseInt(item.getDepth()); j++)
										reply += "&nbsp;&nbsp;&nbsp;";
									if (reply.length() > 0)
										reply += "ㄴ>";
							%>
							<tr>
								<td class="first"><%=num%></td>

								<td class="list"><%=reply%><a href="<%=url%>"><%=item.getTitle()%></a></td>
								<td><%=item.getUsername()%></td>
								<td><%=item.getRegdate()%></td>
								<td><%=item.getHit()%></td>
								<td class="last"><a href="#none" class="btn"
									onclick="goModify('<%=item.getSeq()%>')"><span>수정</span></a> <a
									href="#none" class="btn"
									onclick="goDelete('<%=item.getSeq()%>')"><span>삭제</span></a></td>
							</tr>
							<%
								}
							%>
						</tbody>

					</table>
					<!-- bbs default list E -->

					<!-- bbs footer S -->
					<div class="bft">

						<div class="sbb">
							<ul>
								<li><a href="#"><img
										src="${commonURL}/resources/images/board/def/excel.gif"
										alt="Excel Save" /></a></li>
							</ul>
						</div>

						<!-- pagination S -->
						<div class="pg">

							<%=Pager.makeTag(request, 10, total)%>
						</div>
						<!-- pagination E -->

						<div class="bb withpg">
							<ul>
								<li><a href="#none" id="btnList">목록</a></li>
								<li><a href="#none" id="btnWrite">글쓰기</a></li>

							</ul>
						</div>

					</div>
					<!-- bbs footer E -->



				</div>
				<!-- content E -->

			</div>
			<!-- section E -->

		</div>
		<!-- site align E -->

	</form>


	<!-- START: footer -->
	<footer role="contentinfo" class="probootstrap-footer">
		<div class="container">
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
	
</body>

</html>

<script>
	function goPage(pg) {
		/*var frm = document.mform;
		frm.pg.value=pg;
		frm.action="${commonURL}/board/list.mt";
		frm.submit();*/

		$("#pg").val(pg); //frm.pg.value=pg;
		//jquery버전이나 브라우저에 따라서 attr이 
		//먹는 경우가 있고 prop가 먹는 경우가 있다 
		$("#mform").attr("action", "${commonURL}/board/list.mt");
		$("#mform").prop("action", "${commonURL}/board/list.mt");

		$("#mform").submit();
	}

	function goSearch() {
		/*var frm = document.mform;
		frm.pg.value="0";//검색누르면 첫번째 페이지로 이동
		frm.action="${commonURL}/board/list.mt";
		frm.submit();*/

		$("#pg").val("0");
		$("#mform").attr("action", "${commonURL}/board/list.mt");
		$("#mform").prop("action", "${commonURL}/board/list.mt");

		$("#mform").submit();
	}

	function goModify(seq) {
		$("#mode").val("update");
		$("#seq").val(seq);
		var url = "${commonURL}/board/write.mt";
		$("#mform").attr("action", url);
		$("#mform").prop("action", url);
		$("#mform").submit();
	}

	function goDelete(seq) {
		if (confirm("삭제하시겠습니까? ")) {
			var url = "${commonURL}/board/delete.mt";
			$.ajax({
				url : url,
				data : {
					"seq" : seq
				},
				dataType : "text",
				success : function(data) {
					alert("글이 삭제되었습니다");
					//현재 페이지 새로 고침하기 
					location.reload();
				},
				error : function(e) {
					alert("삭제 실패");
				}
			});
		}

	}

	$(document).ready(function() {
		$("#btnWrite").click(function() {
			//여기다 write로 전송하기 
			$("#pg").val("0");
			$("#sel").val("all");
			$("#key").val("");
			$("#mode").val("insert");

			$("#mform").attr("action", "${commonURL}/board/write.mt");
			$("#mform").prop("action", "${commonURL}/board/write.mt");

			$("#mform").submit();
		});
	});
</script>
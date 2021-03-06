<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page import="java.util.*"%>
<%@page import="com.multi.ArtMM.artwork.dto.*"%>
<%@page import="com.multi.ArtMM.common.*"%>

<%@include file="../include/common.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>작품 게시판</title>
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
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
      
    <![endif]-->
</head>

<style>
body {
	background-color: #ffe6e6;
}

.probootstrap-footer {
	align-content: center;
}
</style>






<body>

	<!-- START: header, login -->
	<%@include file="../include/header.jsp"%>
	<!-- End: header, login -->


	<form name="mform" id="mform">
		<input type="hidden" name="pg" value="<%=pg%>" id="pg" /> <input
			type="hidden" name="mode" id="mode" /> <input type="hidden"
			name="seq" id="seq" />

		<!-- site align S -->
		<div class="sa">

			<!-- section S -->
			<div id="content">
				<h3>작품게시판</h3>
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
							</select> <label for="key" class="desc">Keyword</label> <input type="text"
								id="key" name="key" class="keyword" size="30" value="<%=key%>" />
							<span class="inbtn inputBtn"><input type="button"
								onclick="goSearch()" class="submit" value="Search" /></span>
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

						<col width="20%" />
						<col width="*" />
					</colgroup>
					<thead>

						<tr>
							<th scope="col" class="first">작품</th>
							<th scope="col">작품 정보</th>
						</tr>

					</thead>

					<tbody>
						<%
							List<ArtworkDto> list = (List<ArtworkDto>) request.getAttribute("list");
							int total = (Integer) request.getAttribute("total");
							for (int i = 0; i < list.size(); i++) {
								ArtworkDto item = list.get(i);
								int num = total - Integer.parseInt(item.getNum()) + 1;
								String url = commonURL + "/artwork/view.mt?seq=" + item.getSeq() + "&sel=" + sel + "&key=" + key;

								String reply = "";
								for (int j = 0; j < Integer.parseInt(item.getDepth()); j++)
									reply += "&nbsp;&nbsp;&nbsp;";
								if (reply.length() > 0)
									reply += "ㄴ>";
						%>
						<tr>
							<td class="first"><a href="<%=url%>"><img
									src="${commonURL}/upload/artwork/<%=item.getFilename1()%>"
									style="width: 160px; height: 200px;" /></a></td>
							<td>
								<table style="width: 100%">
									<tr class="tr">
										<td class="list"><strong>[작품명] : </strong> <a
											href="<%=url%>"><%=item.getTitle()%></a></td>
									</tr>
									<tr>
										<td class="list"><strong>[작가명] : </strong><a
											href="<%=url%>"><%=item.getArtist()%></a></td>
									</tr>
									<tr>
										<td class="list"><strong>[소개] : <%
											String contents = item.getContents();
												if (contents.length() > 300)
													contents = contents.substring(0, 300) + "...";
										%>
										</strong><a href="<%=url%>"><%=contents%></a></td>
									</tr>
									<tr>
										<td class="list"><strong>[제작연도] : </strong><a
											href="<%=url%>"><%=item.getCreated()%></a></td>
									</tr>
								</table>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>

				</table>
				<!-- bbs default list E -->

				<!-- bbs footer S -->
				<div class="bft">



					<!-- pagination S -->
					<div class="pg">

						<%=Pager.makeTag(request, 5, total)%>
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
		<!-- site align E -->

	</form>


	<!-- START: footer -->
	<%@include file="../include/footer.jsp"%>
	<!-- END: footer -->

</body>

</html>

<script>
	function goPage(pg) {
		/*var frm = document.mform;
		frm.pg.value=pg;
		frm.action="${commonURL}/artwork/list.mt";
		frm.submit();*/

		$("#pg").val(pg); //frm.pg.value=pg;
		//jquery버전이나 브라우저에 따라서 attr이 
		//먹는 경우가 있고 prop가 먹는 경우가 있다 
		$("#mform").attr("action", "${commonURL}/artwork/list.mt");
		$("#mform").prop("action", "${commonURL}/artwork/list.mt");

		$("#mform").submit();
	}

	function goSearch() {
		/*var frm = document.mform;
		frm.pg.value="0";//검색누르면 첫번째 페이지로 이동
		frm.action="${commonURL}/artwork/list.mt";
		frm.submit();*/

		$("#pg").val("0");
		$("#mform").attr("action", "${commonURL}/artwork/list.mt");
		$("#mform").prop("action", "${commonURL}/artwork/list.mt");

		$("#mform").submit();
	}

	function goModify(seq) {
		$("#mode").val("update");
		$("#seq").val(seq);
		var url = "${commonURL}/artwork/write.mt";
		$("#mform").attr("action", url);
		$("#mform").prop("action", url);
		$("#mform").submit();
	}

	function goDelete(seq) {
		if (confirm("삭제하시겠습니까? ")) {
			var url = "${commonURL}/artwork/delete.mt";
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

			$("#mform").attr("action", "${commonURL}/artwork/write.mt");
			$("#mform").prop("action", "${commonURL}/artwork/write.mt");

			$("#mform").submit();
		});
	});
</script>
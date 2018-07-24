<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setAttribute("title", "게시판");
	request.setAttribute("commonURL", "/ArtMM");
	String commonURL = "/ArtMM";
	String pg = "0";
	if (request.getParameter("pg") != null)
		pg = request.getParameter("pg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${title}</title>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<link href="${commonURL}/resources/css/admin.css" rel="stylesheet" type="text/css" />
<script src="${commonURL}/resources/ckeditor/ckeditor.js"></script>
<script src="${commonURL}/resources/ckeditor/samples/js/sample.js"></script>
<link rel="stylesheet" href="${commonURL}/resources/ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

<!-- <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500"
	rel="stylesheet">
<link rel="stylesheet" href="/ArtMM/resources/css/styles-merged.css">
<link rel="stylesheet" href="/ArtMM/resources/css/style.min.css">
<link rel="stylesheet" href="/ArtMM/resources/css/custom.css">
<link rel="stylesheet" href="/ArtMM/resources/css/animate.css">
<script src="/ArtMM/resources/js/scripts.min.js"></script>
<script src="/ArtMM/resources/js/main.min.js"></script>
<script src="/ArtMM/resources/js/custom.js"></script> -->

</head>
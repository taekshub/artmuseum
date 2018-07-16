<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../include/common.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>전시일정</title>
<meta name="description" content="Free Bootstrap Theme by uicookies.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500"
	rel="stylesh eet">
<link rel="stylesheet" href="/myhome1/resources/css/styles-merged.css">
<link rel="stylesheet" href="/myhome1/resources/css/style.min.css">
<link rel="stylesheet" href="/myhome1/resources/css/custom.css">
<link rel="stylesheet" href="/myhome1/resources/css/animate.css">

<link href='/myhome1/resources/css/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='/myhome1/resources/css/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='/myhome1/resources/js/fullcalendar/moment.min.js'></script>
<script src='/myhome1/resources/js/fullcalendar/jquery.min.js'></script>
<script src='/myhome1/resources/js/fullcalendar/fullcalendar.min.js'></script>

<!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
</head>

<style>
body {
	background-color: #ffe6e6;
}
#calendar {
	padding : 30px 50px 30px;
}

</style>

<body>

	<!-- START: header, login -->
	<%@include file="../include/header.jsp"%>
	<!-- End: header, login -->

	<!-- site align S -->
		<div class="sa">
			<!-- section S -->
			<div id="content">
				<h3>&nbsp;전시일정</h3>
			</div>
		</div>
		
<script>

  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay,listWeek'
      },
      defaultDate: new Date(),
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2018-07-01',
        },
        {
          title: 'Long Event',
          start: '2018-07-07',
          end: '2018-07-10'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-07-09T16:00:00'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-07-16T16:00:00'
        },
        {
          title: 'Meeting',
          start: '2018-07-12T10:30:00',
          end: '2018-07-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2018-07-12T12:00:00'
        },
        {
          title: 'Happy Hour',
          start: '2018-07-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2018-07-12T20:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2018-07-28'
        }
      ]
    });

  });

</script>

<div id='calendar'></div>


	<!-- START: footer -->
	<%@include file="../include/footer.jsp"%>
	<!-- END: footer -->



</body>
</html>
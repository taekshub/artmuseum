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
<link rel="stylesheet" href="/ArtMM/resources/css/styles-merged.css">
<link rel="stylesheet" href="/ArtMM/resources/css/style.min.css">
<link rel="stylesheet" href="/ArtMM/resources/css/custom.css">
<link rel="stylesheet" href="/ArtMM/resources/css/animate.css">

<link href='/ArtMM/resources/css/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='/ArtMM/resources/css/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='/ArtMM/resources/js/fullcalendar/moment.min.js'></script>
<script src='/ArtMM/resources/js/fullcalendar/jquery.min.js'></script>
<script src='/ArtMM/resources/js/fullcalendar/fullcalendar.min.js'></script>
<script src='/ArtMM/resources/js/fullcalendar/ko.js'></script>

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
	font-size: 15px;
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

  function getDate(start)
  {
		var dateObj = new Date(start);
	  	var year = dateObj.getFullYear();
	  	var month = dateObj.getMonth()+1;
	  	if( month<10)
	  		month = "0"+month;
	 	
	  	return year+"-"+month;
  }
  
  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
    	locale: 'ko',
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay,listWeek'
      },
      defaultDate: new Date(),
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events:
    	  function(start, end, timezone, callback) {
  	  
    	    //alert(getDate(start));
    	    
    	    $.ajax({
    	      url: '${commonURL}/scheduleList.mt',
    	      dataType: 'json',
    	      data: {
    	        // our hypothetical feed requires UNIX timestamps
    	         start:getDate(start)
    	      },
    	      success: function(doc) {
    	    	console.log(doc);
    	        var events = [];
    	        $(doc).each(function() {
    	          events.push({
    	            title: $(this).attr('title'),
    	            start: $(this).attr('start') // will be parsed
    	          });
    	        });
    	        console.log(events);
    	        
    	        callback(events);
    	      }
    	    });
    	  }
      });
  });

</script>

<div id='calendar'></div>


	<!-- START: footer -->
	<%@include file="../include/footer.jsp"%>
	<!-- END: footer -->



</body>
</html>
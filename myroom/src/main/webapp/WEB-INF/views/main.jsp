<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
	<jsp:include page="/WEB-INF/common/default-header.jsp"/> 
</head>
<body>
	<div class="layer"></div>
	<!-- Mobile menu overlay mask -->

	<div id="preloader">
		<div data-loader="circle-side"></div>
	</div>
	<!-- End Preload -->
    
	<jsp:include page="/WEB-INF/common/default-nav.jsp"/> 
	
	<main>
		<div class="container margin_60" style="max-width: 100%; padding-top: 0; padding-bottom: 0" >
			<div class="row">
				<img src="img/myroom/myroom_main.png" alt="myroom" width="100%" height="100%"/>
				
				
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</main>
	<!-- /main -->
	
	<footer>
		<jsp:include page="/WEB-INF/common/default-footer.jsp"/> 
	</footer>
	<!--/footer-->

	<div id="toTop"></div>
	<!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
	<script src="js/common_scripts.min.js"></script>
	<script src="js/functions.js"></script>
   	
	<!-- SPECIFIC SCRIPTS -->
    <script src="js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
			todayHighlight: true,
			daysOfWeekDisabled: [0],
			weekStart: 1,
			format: "yyyy-mm-dd",
			datesDisabled: ["2017/10/20", "2017/11/21", "2017/12/21", "2018/01/21", "2018/02/21", "2018/03/21"],
		});
	</script>





















	
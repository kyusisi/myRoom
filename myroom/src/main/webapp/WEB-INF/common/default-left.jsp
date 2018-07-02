<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%> --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
	
	var left = 
	{
		pageSubmitFn : function(pageName) {
			$("#pageName").val(pageName);
			
			if (pageName == "mainMenu") {
				$("#frm").attr("action", "main.do");	
			}

			$("#frm").submit();
		}
	}
	
	$(document).ready(function() {

	});
</script>

<aside class="col-xl-3 col-lg-4" id="sidebar">
	<div class="box_profile">
		<figure>
			<img src="http://via.placeholder.com/565x565.jpg" alt=""
				class="img-fluid">
		</figure>
		<small>Primary care - Internist</small>
		<h1>DR. Julia Jhones</h1>
		<span class="rating"> <i class="icon_star voted"></i> <i
			class="icon_star voted"></i> <i class="icon_star voted"></i> <i
			class="icon_star voted"></i> <i class="icon_star"></i> <small>(145)</small>
			<a href="badges.html" data-toggle="tooltip" data-placement="top"
			data-original-title="Badge Level" class="badge_list_1"><img
				src="img/badges/badge_1.svg" width="15" height="15" alt=""></a>
		</span>
		<ul class="statistic">
			<li>854 Views</li>
			<li>124 Patients</li>
		</ul>
		<ul class="contacts">
			<li><h6>Address</h6>859 60th, Brooklyn, NY, 11220</li>
			<li><h6>Phone</h6>
				<a href="tel://000434323342">+00043 4323342</a></li>
		</ul>
		<div class="text-center">
			<a
				href="https://www.google.com/maps/dir//Assistance+%E2%80%93+H%C3%B4pitaux+De+Paris,+3+Avenue+Victoria,+75004+Paris,+Francia/@48.8606548,2.3348734,14z/data=!4m15!1m6!3m5!1s0x0:0xa6a9af76b1e2d899!2sAssistance+%E2%80%93+H%C3%B4pitaux+De+Paris!8m2!3d48.8568376!4d2.3504305!4m7!1m0!1m5!1m1!1s0x47e67031f8c20147:0xa6a9af76b1e2d899!2m2!1d2.3504327!2d48.8568361"
				class="btn_1 outline" target="_blank"><i class="icon_pin"></i>
				View on map</a>
		</div>
	</div>
</aside>
<!-- /asdide -->
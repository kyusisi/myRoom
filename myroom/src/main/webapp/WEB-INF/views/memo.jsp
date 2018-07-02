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
		<div class="container margin_60">
			<div class="row">
				<jsp:include page="/WEB-INF/common/default-left.jsp"/> 
				
				<!-- content 부분 -->
				<script type="text/javascript">
					var memo = {
	
						btnClick : function() {
							var inputNotEmpty = true, $memo = $(".memo");
	
							inputNotEmpty = this.validationChkFn($memo);
	
							if (!inputNotEmpty) {
								return;
							}
						},
	
						validationChkFn : function(obj) {
							var inputNotEmpty = true;
	
							obj.each(function() {
								var $this = $(this);
	
								if ($this.val() === "") {
									alert($this.attr("title") + "는(은) 필수 입니다.");
	
									$this.focus();
	
									inputNotEmpty = false;
	
									return false;
								}
							})
	
							return inputNotEmpty;
						}
					}
	
					$(function() {
	
						$(".teb1Bnt").click(function() {
							memo.btnClick();
						})
	
						$(".btnList").click(function() {
							location.href = "memoList.jsp";
						})
					});
				</script>
	
				<div class="col-xl-9 col-lg-8">
					<div class="tabs_styled_2">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active" id="book-tab"
								data-toggle="tab" href="#book" role="tab" aria-controls="book">메모장</a></li>
							<li class="nav-item"><a class="nav-link" id="general-tab"
								data-toggle="tab" href="#general" role="tab"
								aria-controls="general" aria-expanded="true">General info</a></li>
							<li class="nav-item"><a class="nav-link" id="reviews-tab"
								data-toggle="tab" href="#reviews" role="tab"
								aria-controls="reviews">Reviews</a></li>
						</ul>
						<!--/nav-tabs -->
	
						<div class="tab-content">
	
							<!-- /tab_1 start-->
							<div class="tab-pane fade show active" id="book" role="tabpanel"
								aria-labelledby="book-tab">
	
								<form id="frm" class="">
									<div class="main_title_3">
										<h3>
											<strong>1</strong>Myroom 메모작성
										</h3>
									</div>
									<div class="form-group add_bottom_45">
										<label>제목</label> <input type="text" id="memoTitle"
											class="memo" name="title" title="제목" /><br>
										<br>
										<br> <label></label>
										<textarea id="memoContent" class="memo" title="내용" rows="20"
											cols="100"></textarea>
									</div>
								</form>
								<hr>
								<p class="text-center">
									<a href="#" class="btn_1 medium teb1Bnt">저장하기</a> <a href="#"
										class="btn_1 medium btnList">리스트로</a>
								</p>
							</div>
							<!-- /tab_1 -->
	
							<!-- tab_2 start -->
							<div class="tab-pane fade" id="general" role="tabpanel"
								aria-labelledby="general-tab">
								<p class="lead add_bottom_30">Sed pretium, ligula
									sollicitudin laoreet viverra, tortor libero sodales leo, eget
									blandit nunc tortor eu nibh. Lorem ipsum dolor sit amet,
									consectetuer adipiscing elit.</p>
								<div class="indent_title_in">
									<i class="pe-7s-user"></i>
									<h3>Professional statement</h3>
									<p>Mussum ipsum cacilds, vidis litro abertis.</p>
								</div>
								<div class="wrapper_indent">
									<p>Sed pretium, ligula sollicitudin laoreet viverra, tortor
										libero sodales leo, eget blandit nunc tortor eu nibh. Lorem
										ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus
										hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque,
										aliquet vel, dapibus id, mattis vel, nisi. Nullam mollis.
										Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In
										nisi neque, aliquet vel, dapi.</p>
									<h6>Specializations</h6>
									<div class="row">
										<div class="col-lg-6">
											<ul class="bullets">
												<li>Abdominal Radiology</li>
												<li>Addiction Psychiatry</li>
												<li>Adolescent Medicine</li>
												<li>Cardiothoracic Radiology</li>
											</ul>
										</div>
										<div class="col-lg-6">
											<ul class="bullets">
												<li>Abdominal Radiology</li>
												<li>Addiction Psychiatry</li>
												<li>Adolescent Medicine</li>
												<li>Cardiothoracic Radiology</li>
											</ul>
										</div>
									</div>
									<!-- /row-->
								</div>
								<!-- /wrapper indent -->
	
								<hr>
	
								<div class="indent_title_in">
									<i class="pe-7s-news-paper"></i>
									<h3>Education</h3>
									<p>Mussum ipsum cacilds, vidis litro abertis.</p>
								</div>
								<div class="wrapper_indent">
									<p>Phasellus hendrerit. Pellentesque aliquet nibh nec urna.
										In nisi neque, aliquet vel, dapibus id, mattis vel, nisi.
										Nullam mollis. Phasellus hendrerit. Pellentesque aliquet nibh
										nec urna. In nisi neque, aliquet vel, dapi.</p>
									<h6>Curriculum</h6>
									<ul class="list_edu">
										<li><strong>New York Medical College</strong> - Doctor of
											Medicine</li>
										<li><strong>Montefiore Medical Center</strong> - Residency
											in Internal Medicine</li>
										<li><strong>New York Medical College</strong> - Master
											Internal Medicine</li>
									</ul>
	
								</div>
								<!--  End wrapper indent -->
	
								<hr>
	
								<div class="indent_title_in">
									<i class="pe-7s-cash"></i>
									<h3>Prices &amp; Payments</h3>
									<p>Mussum ipsum cacilds, vidis litro abertis.</p>
								</div>
								<div class="wrapper_indent">
									<p>Zril causae ancillae sit ea. Dicam veritus mediocritatem
										sea ex, nec id agam eius. Te pri facete latine salutandi,
										scripta mediocrem et sed, cum ne mundi vulputate. Ne his sint
										graeco detraxit, posse exerci volutpat has in.</p>
									<table class="table table-responsive table-striped">
										<thead>
											<tr>
												<th>Service - Visit</th>
												<th>Price</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>New patient visit</td>
												<td>$34</td>
											</tr>
											<tr>
												<td>General consultation</td>
												<td>$60</td>
											</tr>
											<tr>
												<td>Back Pain</td>
												<td>$40</td>
											</tr>
											<tr>
												<td>Diabetes Consultation</td>
												<td>$55</td>
											</tr>
											<tr>
												<td>Eating disorder</td>
												<td>$60</td>
											</tr>
											<tr>
												<td>Foot Pain</td>
												<td>$35</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!--  End wrapper_indent -->
	
							</div>
							<!-- /tab_2 -->
	
							<div class="tab-pane fade" id="reviews" role="tabpanel"
								aria-labelledby="reviews-tab">
								<div class="reviews-container">
									<div class="row">
										<div class="col-lg-3">
											<div id="review_summary">
												<strong>4.7</strong>
												<div class="rating">
													<i class="icon_star voted"></i><i class="icon_star voted"></i><i
														class="icon_star voted"></i><i class="icon_star voted"></i><i
														class="icon_star"></i>
												</div>
												<small>Based on 4 reviews</small>
											</div>
										</div>
										<div class="col-lg-9">
											<div class="row">
												<div class="col-lg-10 col-9">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															style="width: 90%" aria-valuenow="90" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-lg-2 col-3">
													<small><strong>5 stars</strong></small>
												</div>
											</div>
											<!-- /row -->
											<div class="row">
												<div class="col-lg-10 col-9">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															style="width: 95%" aria-valuenow="95" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-lg-2 col-3">
													<small><strong>4 stars</strong></small>
												</div>
											</div>
											<!-- /row -->
											<div class="row">
												<div class="col-lg-10 col-9">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															style="width: 60%" aria-valuenow="60" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-lg-2 col-3">
													<small><strong>3 stars</strong></small>
												</div>
											</div>
											<!-- /row -->
											<div class="row">
												<div class="col-lg-10 col-9">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															style="width: 20%" aria-valuenow="20" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-lg-2 col-3">
													<small><strong>2 stars</strong></small>
												</div>
											</div>
											<!-- /row -->
											<div class="row">
												<div class="col-lg-10 col-9">
													<div class="progress">
														<div class="progress-bar" role="progressbar"
															style="width: 0" aria-valuenow="0" aria-valuemin="0"
															aria-valuemax="100"></div>
													</div>
												</div>
												<div class="col-lg-2 col-3">
													<small><strong>1 stars</strong></small>
												</div>
											</div>
											<!-- /row -->
										</div>
									</div>
									<!-- /row -->
	
									<hr>
	
									<div class="review-box clearfix">
										<figure class="rev-thumb">
											<img src="http://via.placeholder.com/150x150.jpg" alt="">
										</figure>
										<div class="rev-content">
											<div class="rating">
												<i class="icon_star voted"></i><i class="icon_star voted"></i><i
													class="icon_star voted"></i><i class="icon_star voted"></i><i
													class="icon_star"></i>
											</div>
											<div class="rev-info">Admin – April 03, 2016:</div>
											<div class="rev-text">
												<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
													mi at leo pulvinar hendrerit. Cum sociis natoque penatibus
													et magnis dis</p>
											</div>
										</div>
									</div>
									<!-- /review-box -->
	
									<div class="review-box clearfix">
										<figure class="rev-thumb">
											<img src="http://via.placeholder.com/150x150.jpg" alt="">
										</figure>
										<div class="rev-content">
											<div class="rating">
												<i class="icon-star voted"></i><i class="icon_star voted"></i><i
													class="icon_star voted"></i><i class="icon_star voted"></i><i
													class="icon_star"></i>
											</div>
											<div class="rev-info">Ahsan – April 01, 2016</div>
											<div class="rev-text">
												<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
													mi at leo pulvinar hendrerit. Cum sociis natoque penatibus
													et magnis dis</p>
											</div>
										</div>
									</div>
									<!-- End review-box -->
	
									<div class="review-box clearfix">
										<figure class="rev-thumb">
											<img src="http://via.placeholder.com/150x150.jpg" alt="">
										</figure>
										<div class="rev-content">
											<div class="rating">
												<i class="icon-star voted"></i><i class="icon_star voted"></i><i
													class="icon_star voted"></i><i class="icon_star voted"></i><i
													class="icon_star"></i>
											</div>
											<div class="rev-info">Sara – March 31, 2016</div>
											<div class="rev-text">
												<p>Sed eget turpis a pede tempor malesuada. Vivamus quis
													mi at leo pulvinar hendrerit. Cum sociis natoque penatibus
													et magnis dis</p>
											</div>
										</div>
									</div>
									<!-- End review-box -->
	
								</div>
								<!-- End review-container -->
							</div>
							<!-- /tab_3 -->
						</div>
						<!-- /tab-content -->
					</div>
					<!-- /tabs_styled -->
				</div>
				<!-- content 부분 끝 -->
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





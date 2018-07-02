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
					$(function() {
	
						$("#writeBtn").click(function() {
							location.href = "memo.jsp";
						})
					});
				</script>
				<div class="col-xl-9 col-lg-8">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="header" style="overflow: hidden;">
										<div class="text-left col-md-4" style="padding-top: 20px;">
											<h4 class="title">메모 리스트</h4>
										</div>
										<div class="text-right col-md-offset-5 col-md-3"
											style="float: right; margin-bottom: 10px;">
											<button id="writeBtn" type="button"
												class="btn btn-custom-warning"
												style="cursor: pointer !important;">
												<i class="pe-7s-pen"></i> 글쓰기
											</button>
										</div>
									</div>
									<div class="content table-responsive table-full-width">
										<table class="table table-hover table-striped">
											<colgroup>
												<col width="10%" />
												<col width="40%" />
												<col width="15%" />
												<col width="15%" />
												<col width="10%" />
												<col width="10%" />
											</colgroup>
											<thead class="text-center">
												<td>번호</td>
												<td>글 제목</td>
												<td>글쓴이</td>
												<td>작성일</td>
											</thead>
											<tbody class="text-center">
												<c:forEach items="${hanqBoardList}" var="hanqBoardList">
													<tr class="oneRowClk">
														<td><c:out value="${hanqBoardList.hno}" /></td>
														<td class="text-center"><c:out
																value="${hanqBoardList.title}" /></td>
														<td><c:out value="${hanqBoardList. writer}" /></td>
														<td><c:out value="${hanqBoardList. regDate}" /></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<%-- paging처리 시작 --%>
										<%-- <div class="text-center">
							<ul class="pagination">
								<li>
									<a href="#"> « </a>
								</li>
								<li>
									<a href="#"> » </a>
								</li>
		                    </ul>  
	                    </div> --%>
										<%-- paging처리 끝 --%>
									</div>
								</div>
							</div>
						</div>
					</div>
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





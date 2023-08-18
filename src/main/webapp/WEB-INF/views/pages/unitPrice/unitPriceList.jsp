<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="../resources/assets"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>foreEther</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../resources/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="../resources/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="../resources/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="../resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="../resources/assets/css/demo.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- ### 커스텀 css 파일 삽입 위치 ###-->
<link rel="stylesheet" href="../resources/assets/css/common/styles.css">
<link rel="stylesheet" href="../resources/assets/css/pages/home.css" />
<link rel="stylesheet"
	href="../resources/assets/css/pages/storage/unitPrice.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="../resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="../resources/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="../resources/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="../resources/assets/js/config.js"></script>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">

			<!-- 메뉴 (Side Bar) -->
				<%@ include file="../../components/menuBar.jsp" %>
			<!-- // 메뉴 -->

			<!-- Layout container -->
			<section class="layout-page">
				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->
					<div class="container-xxl flex-grow-1 container-p-y">
						<div class="row">
							<div class="col-lg-12 mb-4 order-0">
								<div class="card">
									<div class="d-flex align-items-end row">
										<div class="col-sm-12">
											<div class="card-body">
												<!-- page header -->
												<header class="page-header">
													<h2 class="page-title text-primary">
														단가관리
														</h1>
														<div>
															<button type="button" class="btn btn-primary"
																data-bs-toggle="modal" data-bs-target="#basicModal">
																신규등록</button>
														</div>
												</header>
												<hr />
												<br>
												<!-- UI -->
												<div class="sy-ui-container">
													<div>
														<p>전체 ${pageMaker.total}건</p>
													</div>
													<form class="sy-ui-container-rg" id="searchForm"
														action="/unitPrice/unitPriceList" method="get">
														<!-- Dropbox UI-->
														<div class="sy-ui-select">
															<select name="type" class="form-select"
																id="exampleFormControlSelect1"
																aria-label="Default select example">
																<option value=""
																	<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
																<option value="N"
																	<c:out value="${pageMaker.cri.type eq 'N'?'selected':''}"/>>품목명</option>
																<option value="C"
																	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>품목코드</option>
																<option value="S"
																	<c:out value="${pageMaker.cri.type eq 'S'?'selected':''}"/>>S/L</option>
															</select>
														</div>
														<!-- / Dropbox UI-->
														<!-- Search UI -->
														<div>
															<div class="input-group input-group-merge">
																<input name="keyword" type="text" class="form-control"
																	placeholder="검색..." aria-label="검색..."
																	aria-describedby="basic-addon-search31" /> <input
																	type='hidden' name='pageNum'
																	value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
																	type='hidden' name='amount'
																	value='<c:out value="${pageMaker.cri.amount}"/>' />
																<button type="submit"
																	class="btn btn-secondary search-btn">
																	<i class="bx bx-search"></i>
																</button>
															</div>
														</div>
														<!-- / Search UI -->
													</form>
												</div>
												<!-- /UI -->
												<br>
												<!-- Table UI -->
												<div class="table-responsive text-nowrap">
													<table class="table table-bordered table-hover">
														<thead>
															<tr>
																<th>순번</th>
																<th>단가코드</th>
																<th>Serial/Lot No</th>
																<th>품목코드</th>
																<th>품목명</th>
																<th>표준원가</th>
																<th>구매단가</th>
																<th>판매단가</th>
															</tr>
														</thead>
														<tbody>
															<c:set var="rowno"
																value="${pageMaker.cri.pageNum <= 1 ? 1 : (pageMaker.cri.pageNum-1) * 10 +1}" />
															<c:forEach items="${list}" var="unitPrice">
																<tr>

																	<td>${rowno}</td>
																	<td><c:out value="${unitPrice.unit_price_code}" /></td>
																	<td><a class="sy-up-detail"
																		href="${unitPrice.unit_price_code}"><c:out
																				value="${unitPrice.serialLotVO.serial_lot_code}" /></a></td>
																	<td><a class="sy-up-chart"
																		href="${unitPrice.serialLotVO.item_code}"><c:out
																				value="${unitPrice.serialLotVO.item_code}" /></a></td>
																	<td><c:out value="${unitPrice.item_name}" /></td>
																	<td><fmt:formatNumber
																			value="${unitPrice.standard_cost}" pattern="###,###" /></td>
																	<td><fmt:formatNumber
																			value="${unitPrice.purchase_price}" pattern="###,###" /></td>
																	<td><fmt:formatNumber
																			value="${unitPrice.selling_price}" pattern="###,###" /></td>
																</tr>
																<c:set var="rowno" value="${rowno + 1}" />
															</c:forEach>
														</tbody>
													</table>
												</div>
												<!--/ Table UI -->

												<br /> <br />
												<div class="sy-nav-container">
													<!-- Pagination UI -->
													<nav aria-label="Page navigation">
														<ul class="pagination">
															<c:if test="${pageMaker.prev}">
																<li class="page-item prev"><a class="page-link"
																	href="javascript:void(0);"><i
																		class="tf-icon bx bx-chevron-left"></i></a></li>
															</c:if>

															<c:forEach var="num" begin="${pageMaker.startPage}"
																end="${pageMaker.endPage}">
																<li
																	class="page-item  ${pageMaker.cri.pageNum == num ? 'active':''} ">
																	<a class="page-link" href="${num}">${num}</a>
																</li>
															</c:forEach>
															<c:if test="${pageMaker.next}">
																<li class="page-item next"><a class="page-link"
																	href="javascript:void(0);"><i
																		class="tf-icon bx bx-chevron-right"></i></a></li>
															</c:if>
														</ul>
													</nav>
													<!-- / Pagination UI -->
													<form id='actionForm' action="/unitPrice/unitPriceList"
														method='get'>
														<input type='hidden' name='pageNum'
															value='${pageMaker.cri.pageNum}'> <input
															type='hidden' name='amount'
															value='${pageMaker.cri.amount}'> <input
															type='hidden' name='type'
															value='<c:out value="${ pageMaker.cri.type }"/>'>
														<input type='hidden' name='keyword'
															value='<c:out value="${ pageMaker.cri.keyword }"/>'>


													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- / Content -->
						<!-- register Modal -->
						<div class="modal fade" id="basicModal" tabindex="-1"
							aria-hidden="true">
							<div class="modal-dialog modal-lg modal-dialog-centered"
								role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel1">단가 신규등록</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<br>
									<form id="registerForm" class="modal-body"
										enctype="multipart/form-data" action="/unitPrice/register"
										method="post">
										<div class="row g-2">
											<div class="col mb-0">
												<h6 class="sub-title">품목 정보</h6>
											</div>
											<div class="col mb-0">
												<h6 class="sub-title">금액 정보</h6>
											</div>
										</div>
										<br>
										<div class="row g-2">
											<div class="form-floating col mb-0">
												<input type="text" class="form-control"
													name="serial_lot_code" id="sy-sl-autocomplete"
													placeholder="예시) RM-002-20231231"
													aria-describedby="floatingInputHelp" /> <label
													for="floatingInput">시리얼로트</label>
											</div>
											<div class="form-floating col mb-0">
												<input type="text" class="form-control" id="sy-cal-op"
													name="standard_cost" placeholder="예시) 10000"
													aria-describedby="floatingInputHelp" /> <label
													for="floatingInput">표준원가</label>
											</div>

										</div>
										<br>
										<div class="row g-2">
											<div class="form-floating col mb-0">
												<input type="text" class="form-control" id="sy-op-input"
													name="item_name" placeholder="예시) 김치찌개"
													aria-describedby="floatingInputHelp" /> <label
													for="floatingInput">품목명</label>
											</div>
											<div class="form-floating col mb-0">
												<input type="text" class="form-control" id="sy-cal-bp"
													name="purchase_price" placeholder="예시) 10000"
													aria-describedby="floatingInputHelp" /> <label
													for="floatingInput">구매단가</label>
											</div>
										</div>
										<div class="row g-2">
											<div class="col mb-0"></div>
											<div class="col mb-0">
												<label for="nameBasic" class="form-label">판매단가</label>
												<div class="row g-2">
													<div class="col">
														<input name="selling_price" type="text" id="sy-cal-sp"
															class="form-control">
													</div>
													<div class="col">
														<div class="sy-ui-select">
															<select name="sy-ui-select" class="form-select"
																id="sy-select" aria-label="Default select example">
																<option value="N" selected="selected">직접입력</option>
																<option value="Y">자동계산</option>
															</select>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div id="sy-cal-body">
											<div class="row g-2">
												<div class="col mb-0"></div>
												<div class="col mb-0">
													<div class="row g-2">
														<div class="col form-check mt-3">
															<input name="cal-price" class="form-check-input"
																value="op" type="radio" value="" id="defaultRadio1" />
															<label class="form-check-label" for="defaultRadio1">
																표준원가대비 </label>
														</div>
														<div class="col form-check">
															<input name="cal-price" class="form-check-input"
																value="bp" type="radio" value="" id="defaultRadio2"
																checked /> <label class="form-check-label"
																for="defaultRadio2"> 구매단가대비 </label>
														</div>
													</div>
												</div>
											</div>
											<div class="row g-2">
												<div class="col mb-0"></div>
												<div class="form-floating col mb-0">
													<input type="text" class="form-control" id="sy-cal-m"
														placeholder="예시) 10(단위 %)"
														aria-describedby="floatingInputHelp" /> <label
														for="floatingInput">마진율</label>
												</div>
											</div>
										</div>
										<br>
										<div class="row g-2">
											<div class="col mb-0 input-group">
												<label for="nameBasic" class="form-label">견적서 파일 첨부</label>
												<input type="file" class="form-control" name="uploadFile"
													id="fileInput" aria-describedby="inputGroupFileAddon04"
													aria-label="Upload">
												<button class="btn btn-outline-primary" type="button"
													id="fileBtn">첨부</button>
												<input type="hidden" name="file_name" /> <input
													type="hidden" name="file_size" /> <input type="hidden"
													name="file_format" />
											</div>
										</div>
									</form>
									<div class="modal-footer">
										<button type="button" class="btn btn-label-secondary"
											data-bs-dismiss="modal">취소</button>
										<button type="button" id="registerBtn" class="btn btn-primary">등록</button>
									</div>
								</div>
							</div>
						</div>
						<!-- /Modal -->
						<!-- read Modal -->
						<div class="modal fade" id="readModal" tabindex="-1"
							aria-hidden="true">
							<div class="modal-dialog modal-lg modal-dialog-centered"
								role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="sy-read-modal-title">단가 상세정보</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<br>
									<div id="sy-modal-body" class="modal-body">
										<div class="row">
											<section class="col-md">
												<h6 class="sub-title">품목 정보</h6>
												<div class="sy-read-row">
													<div class="">Serial/Lot No</div>
													<div id="sy-read-modal-sl" class="sy-read-right"></div>
												</div>
												<div class="sy-read-row">
													<div class="">품목명</div>
													<div id="sy-read-modal-in" class="sy-read-right"></div>
												</div>
												<br> <br> <br>
												<h6 class="sub-title">첨부파일</h6>
												<br>
												<div id="sy-file-container">

													<div class="thumbnail" id="sy-file-thumbnail"></div>
													<div class="thumbnail" id="sy-file-filename">
														<label></label>
													</div>
													<div id="sy-file-dBtn-container">
														<a href="#" id="sy-file-btn"
															class="btn btn-outline-secondary me-2 btn-xs "> <img
															style="width: 25px;"
															src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAYAAADhAJiYAAAAAXNSR0IArs4c6QAAAV5JREFUWEft16FKBUEUBuDvIibBatBosJgMYlGDwTfQIOibqG+iYNA3MBjUIgaTxWDUYBVMIsrAFS7X3Z2Z3XthL+7AwsKc859//3PmZ7anZavXMj46QrGO1FVoE+GpWtcIT9aqS+gIh5FKxwhxWasjFJOrU6hTaECB/3HKFrFX0PdgihuRebgpMcYzPJflppyyc+zEhjFx/wK7VbEphKZxhfXEomVht9jCZ1NCIX8W91iqSeoJq3iP5aco9IsxjwfMxUCH9t+wgteUvBxCAW8Zd5hJAccH1vCYGF/rghbm4BJTkSJf2O7PXyqfWoQC+D5OIlUOcJrMpB+Y27JB/Ko7US2XDuBNCIX8Io+Kes0ojn0ZxrBHJXnNOAkNelR4T/KacRMK+Av9Ii+5Qzwc33SGmtb/kz9RhLJ/YTLlKsSvUug7s0BueGHtiSLUupbltmAk8RN1ykbyxbkgrVPoB1qWNyU9teYYAAAAAElFTkSuQmCC" />
															다운로드
														</a>
													</div>
												</div>
											</section>
											<section class="col-md">
												<h6 class="sub-title">금액 정보</h6>
												<div class="sy-read-row">
													<div class="">표준원가</div>
													<div id="sy-read-modal-op" class="sy-read-right"></div>
												</div>
												<div class="sy-read-row">
													<div class="">구매단가</div>
													<div id="sy-read-modal-bp" class="sy-read-right"></div>
												</div>
												<div class="sy-read-row">
													<div class="">판매단가</div>
													<div id="sy-read-modal-sp" class="sy-read-right"></div>
												</div>
											</section>
										</div>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-label-secondary"
											data-bs-dismiss="modal">삭제</button>
										<button type="button" class="btn btn-primary">수정</button>
									</div>
								</div>
							</div>
						</div>
						<!-- /readModal -->

						<!-- /Modal -->
						<!-- chartModal -->
						<div class="modal fade" id="chartModal" tabindex="-1"
							aria-hidden="true">
							<div class="modal-dialog modal-lg modal-dialog-centered"
								role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="sy-read-modal-title">입고가 변동내역</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<br>
									<div id="sy-modal-body" class="modal-body">
										<canvas id="myChart"></canvas>
									</div>
								</div>
							</div>
						</div>
						<!-- /chartModal -->
						<!-- Footer -->
						<footer class="content-footer footer bg-footer-theme">
							<div
								class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
								<div class="mb-2 mb-md-0">
									©
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									, made with ❤️ by <a href="https://themeselection.com"
										target="_blank" class="footer-link fw-bolder">서세소스</a>
								</div>
							</div>
						</footer>
						<!-- / Footer -->

						<div class="content-backdrop fade"></div>
					</div>
					<!-- Content wrapper -->
			</section>
			<!-- / Layout page -->
		</div>

		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- // Layout wrapper -->

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<!-- <script src="../resources/assets/vendor/libs/jquery/jquery.js"></script> -->
	<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
	<!-- jQuery UI CDN 추가 3줄 (autocomplete, 자동 완성 기능 구현용) -->

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="../resources/assets/vendor/libs/popper/popper.js"></script>
	<script src="../resources/assets/vendor/js/bootstrap.js"></script>
	<script
		src="../resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="../resources/assets/vendor/js/menu.js"></script>
	<!-- <script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script> -->
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="../resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="../resources/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="../resources/assets/js/dashboards-analytics.js"></script>
	<script src="../resources/assets/js/extended-ui-perfect-scrollbar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<!-- ### 커스텀 JavaScript 파일 삽입 위치 -->
	<script src="../resources/assets/js/pages/index.js"></script>
	<script src="../resources/assets/js/pages/storage/unitPrice.js"></script>
</body>
</html>






<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="../resources/assets"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<!-- Vendors CSS -->
<link rel="stylesheet"
	href="../resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="../resources/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->
<!-- ### 커스텀 css 파일 삽입 위치 ###-->
<link rel="stylesheet" href="../resources/assets/css/common/styles.css" />
<link rel="stylesheet" href="../resources/assets/css/pages/item/itemList.css" />
<link rel="stylesheet" href="../resources/assets/css/pages/item/itemRegisterModal.css" />
<link rel="stylesheet" href="../resources/assets/css/pages/item/itemDetailModal.css" />

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
													<h2 class="page-title text-primary">품목 조회</h2>
													<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#registerModal">신규등록</button>
												
												</header>
												<hr />

												<div class="table-filter">
													<strong class="total-text">전체 <span><c:out value="${fn:length(data)}"/></span>건</strong>
													<form class="search-combo" action="/item/search" method="get">
														<!-- Dropbox UI-->
														<div class="search-combo-dropbox">
															<select name="searchType" class="form-select" id="exampleFormControlSelect1" aria-label="Default select example">
																<option vlaue="품목명">품목명</option>
																<option value="구매처명">구매처명</option>
															</select>
														</div>
														<!-- / Dropbox UI-->
														<!-- Search UI -->
														<div class="search-combo-input">
															<div class="input-group input-group-merge">
																<input name="searchValue" type="text" class="form-control" placeholder="Search..." aria-label="Search..."
																aria-describedby="basic-addon-search31" />
																<button type="submit" class="btn btn-secondary search-btn">
																	<i class="bx bx-search"></i>
																</button> 
															</div>
														</div>
														<!-- / Search UI -->
													</form>
												</div>

												<!-- Table -->
												<div class="table-responsive text-nowrap">
													<table class="table table-bordered table-hover">
														<thead>
															<tr>
																<th >순번</th>
																<th>품목코드</th>
																<th>품목구분</th>
																<th>품목명</th>
																<th>규격</th>
																<th>안전재고량</th>
																<th>구매처명</th>
																<th></th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${data}" var="item" varStatus="status">
																<tr>
																	<td><c:out value="${status.index+1}" /></td>
																	<td>
																		<button type="button" class="itemCode-btn" data-bs-toggle="modal" data-bs-target="#detailModal" value="${item.item_code}">
																			<c:out	value="${item.item_code}" />
																		</button>
																	</td>
																	<td><c:out value="${item.item_classification}" />
																	</td>
																	<td><c:out value="${item.item_name}" /></td>
																	<td><c:out value="${item.item_specification}" /></td>
																	<td><c:out value="${item.safety_stock}" /></td>
																	<td><c:out value="${item.itemsupplier_vo[0].supplier_vo.supplier_name}" /></td>
																	<td>
																		<div class="dropdown">
																			<button type="button"
																				class="btn p-0 dropdown-toggle hide-arrow"
																				data-bs-toggle="dropdown">
																				<i class="bx bx-dots-vertical-rounded"></i>
																			</button>
																			<div class="dropdown-menu">
																				<button type="button" class="dropdown-item edit-btn"  value="${item.item_code}" data-bs-toggle="modal" data-bs-target="#modifyModal">
																					<i class="bx bx-edit-alt me-1"></i> 수정
																				</button> 
																				<button type="button" class="dropdown-item delete-btn"  value="${item.item_code}">
																					<i class="bx bx-trash me-1"></i> 삭제
																				</button>
																			</div>
																		</div>
																	</td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
												<!--/ Table UI -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- / Content -->

					<!-- Footer -->
					<footer class="content-footer footer bg-footer-theme">
						<div
							class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
							<div class="mb-2 mb-md-0">
								©
								<script>
									document.write(new Date().getFullYear());
								</script>
								, made with ❤️ by <a href="https://themeselection.com"
									target="_blank" class="footer-link fw-bolder">서세소스</a>
							</div>
						</div>
					</footer>
					<!-- / Footer -->

					<div class="content-backdrop fade"></div>
				</div>
				<!-- / Content wrapper -->
			</section>
			<!-- / Layout page -->

			<!-- Detail Modal -->
			<div
				class="modal fade"
				id="detailModal"
				tabindex="-1"
				style="display: none"
				aria-hidden="true"
			>
				<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
					<form class="modal-content" action="/item/register" method="post">
						<header class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel3">품목 상세정보</h5>
							<button
								type="button"
								class="btn-close"
								data-bs-dismiss="modal"
								aria-label="Close"
							></button>
						</header>
						<hr />
						<section class="modal-body">
							<div class="row">
								<!-- 좌측 column -->
								<section class="col-md">
									<h4 class="modal-sub-title">품목 정보</h4>
									<div class="data-container"></div>
									<div class="data-container"></div>
									<div class="data-container"></div>
									<div class="data-container"></div>
									<div class="data-container"></div>
									<div class="data-container"></div>
								</section>
								<!-- 우측 column -->
								<section class="col-md">
									<h4 class="modal-sub-title">구매처 정보</h4>
									<div class="list-container">
										<!-- Table -->
										<div class="table-responsive text-nowrap">
											<table class="table table-bordered table-hover">
												<thead>
													<tr>
														<th>구매처코드</th>
														<th>구매처명</th>
														<th>담당자</th>
													</tr>
												</thead>
												<tbody id="supplier-tbody">
														<tr>
															<td>A001111</td>
															<td>세진나라</td>
															<td>김세진</td>
														</tr>
														<tr>
															<td>A001111</td>
															<td>세진나라</td>
															<td>김세진</td>
														</tr>
												</tbody>
											</table>
										</div>
										<!--/ Table UI -->
									</div>
								</section>
							</div>
						</section>
						<footer class="modal-footer">
							<button
								type="button"
								class="btn btn-outline-secondary"
								data-bs-dismiss="modal"
							>
								닫기
							</button>
							<button type="submit" class="btn btn-primary">수정</button>
						</footer>
					</form>
				</div>
			</div>
			<!-- / Detail Modal -->

			<!-- Register Model -->
			<div class="modal fade" id="registerModal" tabindex="-1"
				style="display: none;" aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
					<form class="modal-content modal-register" action="/item/register" method="post">
						<header class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel3">품목 등록</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</header>
						<hr />
						<section class="modal-body">
							<div class="row">
								<!-- 좌측 column -->
								<div class="col-md">
									<div class="mb-2">
										<div class="col-md">
											<label class="form-label">품목구분</label>
											<div class="form-radiobox-group">
												<div class="form-check mr-2">
													<input name="item-classification" class="form-check-input" type="radio" value="원재료" id="ingredient" checked />
													<label class="form-label" for="ingredient" >
														원재료
													</label>
												</div>
												<div class="form-check">
													<input name="item-classification" class="form-check-input" type="radio" value="제품" id="product" />
													<label class="form-label" for="product">
														제품
													</label>
												</div>
												<div class="form-check">
													<input name="item-classification" class="form-check-input" type="radio" value="상품" id="goods" />
													<label class="form-label" for="goods">
														상품
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="mb-2">
										<label for="item-name" class="form-label">품목명</label>
										<input type="text" id="item-name" class="form-control" name="item-name"/>
									</div>
									<div class="row mb-2">
										<div class="col-md">
											<label for="item-specification" class="form-label">규격</label> 
											<input type="number" id="item-specification" class="form-control" name="item-specification-value"/>
										</div>
										<div class="col-md d-flex align-items-end">
											<div class="search-combo-dropbox">
												<select name="item-specification-unit" class="form-select" id="item-specification-unit" aria-label="Default select example">
													<option value="g">g</option>
													<option vlaue="kg">kg</option>
													<option value="ml">ml</option>
												</select>
											</div>
										</div>
									</div>
									<div  class="mb-2">
										<label for="safety-stock" class="form-label">안전재고량</label>
										<input type="text" id="safety-stock" class="form-control" />
									</div>
								</div>
								<!-- 우측 column -->
								<div class="col-md">
									<div class="mb-2">
										<label for="supplier_name" class="form-label">구매처명</label>
										<!-- Search UI -->
										<div class="input-group input-group-merge">
											<input name="searchValue" type="text" class="form-control" placeholder="Search..." aria-label="Search..."
											aria-describedby="basic-addon-search31" id="supplier_name"/>
											<button type="button" class="btn btn-secondary search-btn" id="supplier-name-searchBtn">
												<i class="bx bx-search"></i>
											</button> 
										</div>
										<!-- / Search UI -->
										<!-- <span class="warning-text visible-hidden"><i class='bx bx-error-circle'></i>올바른 값을 입력하세요</span> -->
									</div>
									<div class="mb-2 visible-hidden">
										<label for="contact-person" class="form-label">담당자명</label>
										<input type="text" id="contact-person" class="form-control" />
									</div>
									<div class="mb-2 visible-hidden">
										<label for="contact-number" class="form-label">연락처</label>
										<input type="tel" id="contact-number" class="form-control" />
									</div>
									<div class="mb-2 visible-hidden">
										<label for="address" class="form-label">주소</label>
										<input type="text" id="address" class="form-control" />
									</div>
								</div>
							</div>
						</section>
						<footer class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">등록</button>
						</footer>
					</form>
				</div>
			</div>
			<!-- / Register Model -->

			<!-- Modify Model -->
			<div class="modal fade" id="modifyModal" tabindex="-1"
				style="display: none;" aria-hidden="true">
				<div class="modal-dialog modal-lg modal-dialog-centered" role="document">
					<form class="modal-content modal-modify" action="/item/detail" method="post">
						<header class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel3">품목 수정</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</header>
						<hr />
						<section class="modal-body">
							<div class="row">
								<!-- 좌측 column -->
								<div class="col-md">
									<div class="mb-2">
										<div class="col-md">
											<label class="form-label">품목구분</label>
											<div class="form-radiobox-group">
												<div class="form-check mr-2">
													<input name="item-classification" class="modify-check-input" type="radio" value="원재료" id="ingredient" checked />
													<label class="form-label" for="ingredient" >
														원재료
													</label>
												</div>
												<div class="form-check">
													<input name="item-classification" class="modify-check-input" type="radio" value="제품" id="product" />
													<label class="form-label" for="product">
														제품
													</label>
												</div>
												<div class="form-check">
													<input name="item-classification" class="modify-check-input" type="radio" value="상품" id="goods" />
													<label class="form-label" for="goods">
														상품
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="mb-2">
										<label for="item-name" class="form-label">품목명</label>
										<input type="text" id="modify-name" class="form-control" name="item-name"/>
									</div>
									<div class="row mb-2">
										<div class="col-md">
											<label for="item-specification" class="form-label">규격</label> 
											<input type="number" id="modify-specification" class="form-control" name="item-specification-value"/>
										</div>
										<div class="col-md d-flex align-items-end">
											<div class="search-combo-dropbox">
												<select name="item-specification-unit" class="form-select" id="modify-specification-unit" aria-label="Default select example">
													<option value="g">g</option>
													<option vlaue="kg">kg</option>
													<option value="ml">ml</option>
												</select>
											</div>
										</div>
									</div>
									<div  class="mb-2">
										<label for="safety-stock" class="form-label">안전재고량</label>
										<input type="text" id="modify-stock" class="form-control" />
									</div>
								</div>
								<!-- 우측 column -->
								<div class="col-md">
									<div class="mb-2">
										<label for="supplier_name" class="form-label">구매처명</label>
										<!-- Search UI -->
										<div class="input-group input-group-merge">
											<input name="searchValue" type="text" class="form-control" placeholder="Search..." aria-label="Search..."
											aria-describedby="basic-addon-search31" id="supplier_name"/>
											<button type="button" class="btn btn-secondary search-btn" id="supplier-name-searchBtn">
												<i class="bx bx-search"></i>
											</button> 
										</div>
										<!-- / Search UI -->
										<!-- <span class="warning-text visible-hidden"><i class='bx bx-error-circle'></i>올바른 값을 입력하세요</span> -->
									</div>
									<div class="mb-2 visible-hidden">
										<label for="contact-person" class="form-label">담당자명</label>
										<input type="text" id="contact-person" class="form-control" />
									</div>
									<div class="mb-2 visible-hidden">
										<label for="contact-number" class="form-label">연락처</label>
										<input type="tel" id="contact-number" class="form-control" />
									</div>
									<div class="mb-2 visible-hidden">
										<label for="address" class="form-label">주소</label>
										<input type="text" id="address" class="form-control" />
									</div>
								</div>
							</div>
						</section>
						<footer class="modal-footer">
							<button type="button" class="btn btn-outline-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">등록</button>
						</footer>
					</form>
				</div>
			</div>
			<!-- / Modify Model -->

		</div>

		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- // Layout wrapper -->

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="../resources/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="../resources/assets/vendor/libs/popper/popper.js"></script>
	<script src="../resources/assets/vendor/js/bootstrap.js"></script>
	<script
		src="../resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="../resources/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script src="../resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="../resources/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="../resources/assets/js/dashboards-analytics.js"></script>
	<script src="../resources/assets/js/extended-ui-perfect-scrollbar.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

	<!-- ### 커스텀 JavaScript 파일 삽입 위치 -->
	<script src="../resources/assets/js/pages/item/itemList.js"></script>
	<!-- <script src="../resources/assets/js/pages/item/itemRegisterModal.js"></script> -->
</body>
</html>

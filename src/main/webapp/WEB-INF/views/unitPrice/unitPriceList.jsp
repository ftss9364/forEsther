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
			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">

				<!-- LOGO -->
				<div class="app-brand demo logo-link">
					<a href="index.html" class="app-brand-link"> <span
						class="app-brand-logo demo"> <svg width="25"
								viewBox="0 0 25 42" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
                  <defs>
                    <path
									d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
									id="path-1"></path>
                    <path
									d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
									id="path-3"></path>
                    <path
									d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
									id="path-4"></path>
                    <path
									d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
									id="path-5"></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1"
									fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo"
									transform="translate(-27.000000, -15.000000)">
                      <g id="Icon"
									transform="translate(27.000000, 15.000000)">
                        <g id="Mask"
									transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#004dc1" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#004dc1" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF"
									xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#004dc1" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF"
									xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g id="Triangle"
									transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                          <use fill="#004dc1" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF"
									xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
					</span> <span class="app-brand-text demo menu-text fw-bolder ms-2">forEsther</span>
					</a>
				</div>
				<!-- // LOGO -->

				<!-- Menu list -->
				<ul class="menu-inner py-1">
					<!-- 대시보드 -->
					<li class="menu-item"><a href="index.html" class="menu-link">
							<i class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">대시보드</div>
					</a></li>
					<!-- // 대시보드 -->

					<!-- 재고관리 -->
					<li class="menu-item active"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-layout"></i>
							<div data-i18n="Layouts">재고관리</div>
					</a>

						<ul class="menu-sub">
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Without menu">품목관리</div>
							</a></li>
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Without navbar">BOM관리</div>
							</a></li>
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Container">SERIAL LOT관리</div>
							</a></li>
							<li class="menu-item active"><a href="index.html"
								class="menu-link">
									<div data-i18n="Fluid">단가관리</div>
							</a></li>
						</ul></li>
					<!-- // 재고관리 -->

					<!-- 생산관리 -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-layout"></i>
							<div data-i18n="Layouts">생산관리</div>
					</a>

						<ul class="menu-sub">
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Without menu">생산계획서관리</div>
							</a></li>
						</ul></li>
					<!-- // 생산관리 -->

					<!-- 구매관리 -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-layout"></i>
							<div data-i18n="Layouts">구매관리</div>
					</a>

						<ul class="menu-sub">
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Without menu">재고리스트</div>
							</a></li>
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Without navbar">발주계획서관리</div>
							</a></li>
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Container">발주서관리</div>
							</a></li>
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Fluid">구매전표관리</div>
							</a></li>
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Fluid">입고관리</div>
							</a></li>
						</ul></li>
					<!-- // 구매관리 -->

					<!-- 판매관리 -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-layout"></i>
							<div data-i18n="Layouts">판매관리</div>
					</a>

						<ul class="menu-sub">
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Without menu">주문서관리</div>
							</a></li>
							<li class="menu-item"><a href="index.html" class="menu-link">
									<div data-i18n="Without menu">배송관리</div>
							</a></li>
						</ul></li>
					<!-- // 판매관리 -->
				</ul>
			</aside>
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






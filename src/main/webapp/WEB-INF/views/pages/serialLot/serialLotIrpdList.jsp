<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../resources/assets"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>foreEther</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../resources/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../resources/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../resources/assets/css/demo.css" />
    <!-- ### 커스텀 css 파일 삽입 위치 ###-->
    <link rel="stylesheet" href="../resources/assets/css/common/styles.css">
    <link rel="stylesheet" href="../resources/assets/css/pages/serialLotList.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="../resources/assets/vendor/libs/apex-charts/apex-charts.css" />

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
                            <h2 class="page-title text-primary">시리얼로트 재고수불부</h1>
                          </header>
                          <hr/>
                          
                          <div class="table-filter">
                              <strong id="total-text" class="total-text"></strong>
                              <form class="search-combo" action="/item/search" method="post">
                                 <!-- Dropbox UI-->
                                 <div class="search-combo-dropbox">
                                    <select name="searchType" class="form-select" id="exampleFormControlSelect1" aria-label="Default select example">
                                       <option vlaue="품목명">품목명</option>
                                       <option value="품목코드">품목코드</option>
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

                          <!-- Table UI -->
                          <div class="table-responsive text-nowrap">
                            <table class="serialLotIrpdTable table table-bordered">
                              <thead>
                 			   <tr>
									<th>순번</th>
									<th>등록일자</th>
									<th>재고수불부 코드</th>
									<th>Serial/Lot No</th>
									<th>품목명</th>
									<th>분류</th>
									<th>변동재고량</th>
									<th>현재재고량</th>
									<th>구매처</th>
									<th>연결전표</th>
								</tr>
                              </thead>
                              <tbody>
                              </tbody>
                            </table>
                          </div>
                          <!--/ Table UI -->
                          
						<!-- 모달창 -->
							<!-- 상세정보 모달 -->
							<div class="modal fade" id="serialLotIrpdDetail-modal" tabindex="-1" style="display: none;" aria-hidden="true" role="dialog">
							  <div class="modal-dialog modal-xl" role="document">
							    <div class="modal-content" style="width: 100%; height: 400px;">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel4">상세정보</h5>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
								        <!-- get jsp 와 연결 -->
							        <iframe id="go-get" style="width: 100%; height: 100%; border: none;"></iframe>
							      </div>
							    </div>
							  </div>
							</div>
							<!-- /상세정보 모달 -->
						<!-- /모달창 -->
						
                          <br/>
                          <br/>

                          <!-- Pagination UI -->
                          <nav aria-label="Page navigation">
                            <ul class="pagination">
                            <!-- prev 버튼 활성화 -->
							<!--  boolean 타입 반환 -->
							<c:if test="${pageMaker.cri.pageNum > 1}">
								<li class="page-item prev">
								<a class="page-link" href="/serialLot/serialLotIrpdList?pageNum=${pageMaker.cri.pageNum -1}">
									<i class="tf-icon bx bx-chevron-left"></i>
								</a>
								</li>
							</c:if>
							
							<!-- 페이지 번호 개수 -->
							<c:forEach var="num" 
								begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<li class="page-item ${pageMaker.cri.pageNum == num ? "active":""} ">
									<a class="page-link" href="/serialLot/serialLotIrpdList?pageNum=${num}">${num}</a>
								</li>
							</c:forEach>
							
							<!-- next 버튼 활성화 -->
							<c:if test="${pageMaker.cri.pageNum + 1 <= pageMaker.endPage}">
								<li class="page-item next">
									<a class="page-link" href="/serialLot/serialLotIrpdList?pageNum=${pageMaker.cri.pageNum +1}">
										<i class="tf-icon bx bx-chevron-right"></i>
									</a>
								</li>
							</c:if>
                            </ul>
                          </nav>
                          <!-- / Pagination UI -->
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  , made with ❤️ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">서세소스</a>
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
            <script src="../resources/assets/vendor/libs/jquery/jquery.js"></script>
            <script src="../resources/assets/vendor/libs/popper/popper.js"></script>
            <script src="../resources/assets/vendor/js/bootstrap.js"></script>
            <script src="../resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

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
    <script src="../resources/assets/js/pages/serialLotIrpd.js"></script>
    <script type="text/javascript">
    	$(function() {
    		serialLotIrpdService.getList(function(list) {
    			var str = "";
    			var index = 1;
    			for (var i=0, len=list.length || 0; i<len; i++) {
    				
    				var registration_date = list[i].registration_date;
    				var serial_lot_irpd_code = list[i].serial_lot_irpd_code;
    				var serial_lot_code = list[i].serial_lot_code;
    				var item_name = list[i].item_name;
    				var irpd_category = list[i].irpd_category;
    				var variation_quantity = list[i].variation_quantity;
    				var stock_quantity = list[i].stock_quantity;
    				var supplier = list[i].supplier;
    				var related_invoice = list[i].related_invoice;

					str += "<tr><td>" + index + "</td>"
							+ "<td>" + registration_date +"</td>"
							+ "<td>" + serial_lot_irpd_code +"</td>"
							+ "<td> <a href=''"
								+ " class=" + '"open-detail-modal"'
								+ 'data-serial_lot_code="' + serial_lot_code + '">'
								+ serial_lot_code +"</td>"
							+ "<td>" + item_name +"</td>"
							+ "<td>" + irpd_category +"</td>"
							+ "<td>" + variation_quantity +"</td>"
							+ "<td>" + stock_quantity +"</td>"
							+ "<td>" + supplier +"</td>"
							+ "<td>" + related_invoice +"</td></tr>";
					index = index + 1;
					
    			};
    			$(".serialLotIrpdTable tbody").append(str);
    			
    		})// end getList
    		
    	}) // end onload
    	
    </script>
  </body>
</html>

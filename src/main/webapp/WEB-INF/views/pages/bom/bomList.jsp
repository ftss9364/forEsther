<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
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
    <link rel="stylesheet" href="../resources/assets/css/pages/bom.css" />

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
                            <h2 class="page-title text-primary">BOM 관리</h2>
                            <!-- Button trigger modal -->
							<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">신규 등록</button>
                          </header>
                          
                          <!-- Modal -->
							<div class="modal fade" id="basicModal" tabindex="-1" aria-hidden="true">
							  <div class="modal-dialog modal-dialog-centered" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLabel1">BOM 신규 작성</h5>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        <div class="row g-2">
							          <div class="col mb-0">
										<div class="input-group input-group-merge">
							          		<span class="input-group-text" id="basic-addon-search31"><i class="bx bx-search"></i></span>
							          		<input type="text" class="form-control" id="item_name_input"  placeholder="품목명 검색..." aria-label="Search..." aria-describedby="basic-addon-search31">
							       		</div>
							       		<br/>
										<!-- Dropbox UI-->
				                            <label for="item_name" class="form-label">모품목 선택</label>
				                            <select class="form-select" id="item_name" aria-label="모품목을 선택해 주세요">
				                              <c:forEach items="${item_list}" var="item">                              	
												<c:set var="j" value="${j+1}"/>
												<c:choose>
													<c:when test="${j eq 1}">
						                              <option value="${item.item_code}" selected><c:out value="${item.item_name}" /></option>											
													</c:when>
													<c:otherwise>
						                              <option value="${item.item_code}"><c:out value="${item.item_name}" /></option>																				
													</c:otherwise>
												</c:choose>
				                              </c:forEach>
				                            </select>
				                          <!-- / Dropbox UI-->
							          </div>
							        </div>
							        <br>
							        <div class="row g-2">
							          <div class="col mb-0">
							            <label for="product_name" class="form-label">제품명</label>
							            <input type="text" id="product_name" class="form-control" placeholder="BOM 등록할 제품명을 등록하세요.">
							          </div>
							        </div>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-label-secondary" data-bs-dismiss="modal">취소</button>
							        <button type="button" id="btnRegister" class="btn btn-primary">BOM 등록</button>
							      </div>
							    </div>
							  </div>
							</div>
                          <hr />
                          
                       		<div class="table-filter">
                             <strong class="total-text">전체 <span><c:out value="${total}"/></span>건</strong>
                             <form class="search-combo" action="/bom/list" method="post">
                                <!-- Dropbox UI-->
                                <div class="search-combo-dropbox">
                                   <select name="searchType" class="form-select" id="exampleFormControlSelect1" aria-label="Default select example">
                                      <option vlaue="품목명">모품목명</option>
                                      <option value="BOM코드">BOM코드</option>
                                   </select>
                                </div>
                                <!-- / Dropbox UI-->
                                <!-- Search UI -->
                                <div class="search-combo-input">
                                   <div class="input-group input-group-merge">
                                      <input name="product_name" type="text" class="form-control" placeholder="검색..." aria-label="Search..."
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
                            <table class="table table-bordered">
                              <thead>
                                <tr>
                                  <th>순번</th>
                                  <th>BOM코드</th>
                                  <th>모품목코드</th>
                                  <th>모품목명</th>
                                  <th>구성품목</th>                                  
                                  <th></th>
                                </tr>
                              </thead>
                              <tbody>
                              <c:set var="i" value="${(pageMaker.cri.pageNum-1)*10 }" />
                              <c:forEach items="${list}" var="bom">
                              	<c:set var="i" value="${i+1}" />
                                <tr>
                                	<td><c:out value="${i}"></c:out></td>
                                	<td class="td-box">
                                		<a class="move" href="${bom.bom_code}"><c:out value="${bom.bom_code}"/></a>
                                  		<button type="button" class="btn btn-link accordion-button" data-toggle="collapse" data-target="#accordion${i}" aria-expanded="false" aria-controls="accordion${i}"><i class="fab fa-angular text-danger me-3"></i></button>
                                  	</td>
                                  	<td><a href=""><c:out value="${fn:substring(bom.bom_code,2,7)}"/></a></td>
                                  	<td><c:out value="${bom.product_name}"/></td>
                                  	<td>
	                                  	<c:set var="temp" value=""/>
	                                  	<c:set var="check" value="true" />
										<c:forEach items="${bomRegList }" var="bom_rg" varStatus="status">
											<c:if test="${check }">
												<c:if test="${bom_rg.bom_code eq bom.bom_code}">
													<c:choose>
														<c:when test="${fn:length(temp) gt 15 }">
															<c:set var="temp" value="${fn:substring(temp, 0, 14)}..."/>
															<c:set var="check" value="false"/>
														</c:when>														
														<c:otherwise>
						                                  	<c:set var="temp" value="${temp}${bom_rg.item_vo.item_name}, "/>													
														</c:otherwise>	
													</c:choose>	
												</c:if>
											</c:if>
										</c:forEach>
										<c:out value="${temp }"/>
                                  </td>
                                  <td class="td-btn">
	                                  <a class="bom-edit-btn move" href="${bom.bom_code}"><i class="bx bx-edit-alt me-1"></i>수정</a>
	                                  <a class="bom-del-btn" href="${bom.bom_code}"><i class="bx bx-trash me-1"></i>삭제</a>
                                  </td>
                                </tr>
                              	<tr>
                              	
				                    <td colspan="6" class="p-0">
				                        <div id="accordion${i}" class="collapse">
		                              		<table class="card-body table">
		                              			<thead>
		                              				<tr>
		                              					<th>        </th>
			                              				<th>자품목코드</th>
			                              				<th>자품목명</th>
			                              				<th>필요수량</th>
		                              					<th>        </th>
		                              					<th>        </th>
		                              				</tr>
		                              			</thead>
		                              			<tbody>
	                              					<c:forEach items="${bomRegList }" var="bom_rg">
	                              						<c:if test="${bom_rg.bom_code eq bom.bom_code}">
				                              				<tr>
				                              					<td>        </td>
																<td><a href=""><c:out value="${bom_rg.item_code}"/></a></td>
																<td><c:out value="${bom_rg.item_vo.item_name}"/></td>
																<td><c:out value="${bom_rg.required_quantity}"/></td>
				                              					<td>        </td>
				                              					<td>        </td>
				                              				</tr>
	                              						</c:if>
													</c:forEach>
		                              			</tbody>	
		                              		</table>
				                        </div>
				                    </td>
				                </tr>
                              </c:forEach>
                               
                              </tbody>
                            </table>
                          </div>
                          <!--/ Table UI -->

                          <br/>
                          <br/>

                          <!-- Pagination UI -->
                          <nav aria-label="Page navigation">
                            <ul class="pagination">
                              <c:if test="${pageMaker.prev}">
									<li class="page-item paginate_button previous">
										<a class="page-link" href="${pageMaker.startPage -1}">
											<i class="tf-icon bx bx-chevron-left"></i>
										</a>
									</li>
								</c:if>
								
								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li class="page-item paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
										<a class="page-link" href="${num}">${num}</a>
									</li>
								</c:forEach>
                             <c:if test="${pageMaker.next}">
									<li class="page-item paginate_button next">
										<a class="page-link" href="${pageMaker.endPage +1 }">
											<i class="tf-icon bx bx-chevron-right"></i>
										</a>
									</li>
								</c:if>
                            </ul>
                          </nav>
                          <!-- / Pagination UI -->

                          <br/>
                          <br/>
                          
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
      
      <form id='actionForm' action="/bom/list" method='get'>
      	<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
      </form>

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
    <script src="../resources/assets/js/pages/index.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	$(function() {
			var actionForm = $("#actionForm");
			
			$(".move").on("click" , function(e) {
				e.preventDefault();
				actionForm.append("<input type='hidden' name='bom_code' value='"	+ $(this).attr("href") + "'>")
				actionForm.attr("action", "/bom/get");
				actionForm.submit();
			
			});
			
			$(document).on("click",".bom-del-btn", function(e) {
				e.preventDefault();				
				var bomCode = $(this).attr("href");
				var requestData = {
						bomCode : bomCode,
					};
				
				$.ajax({
					type:"POST",
					contentType: "application/json",
					url : "/bom/delete",
					data: JSON.stringify(requestData),
					dataType:"json",
					success: function(response) {
		                if (response.success) {
		                	window.location.href = "/bom/list";
		                } else {
		                    // Handle error
		                }
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                console.log("AJAX 오류:", textStatus, errorThrown);
		            }
				});
				
			});
			
			
			$("#item_name_input").on("keypress",function() {
				var itemName = $(this).val();
				var $row = $("#item_name").find("option");
				var requestData = {
					itemName : itemName,
				};
				$.ajax({
					type:"POST",
					contentType: "application/json",
					url : "/bom/search-product",
					data: JSON.stringify(requestData),
					dataType:"json",
					success: function(response) {
		                if (response.success) {
		                    $row.remove();
							if(response.items.length > 0){
								$.each(response.items, function(index,el) {
									var newRowHtml = "";
									if(index == 0){
					                    newRowHtml = `
					                    	<option value=`+el.item_code+` selected>`+el.item_name+`</option>
					                    `;
									} else {
					                    newRowHtml = `
					                    	<option value=`+el.item_code+`>`+el.item_name+`</option>
					                    `;
									}
									$("#item_name").append(newRowHtml);
								});
							}
		                } else {
		                }
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                console.log("AJAX 오류:", textStatus, errorThrown);
		            }
					
					
				});
				
			});
			
			
			$("#btnRegister").on("click",function() {
				
				var itemCode = $("#item_name option:selected").val();
				var productName = $("#product_name").val();
				
				var requestData = {
					itemCode : itemCode,
					productName : productName
				};
               	if(productName == ""){
               		alert("제품명을 입력해주세요.");
               	} else {
               		
					$.ajax({
						type:"POST",
						contentType: "application/json",
						url : "/bom/new-bom",
						data: JSON.stringify(requestData),
						dataType:"json",
						success: function(response) {
			                if (response.success) {
			                	
			                	window.location.href = "/bom/get?bom_code="+response.newBomCode;
			                	
			                } else {
			                    // Handle error
			                }
			            },
			            error: function(jqXHR, textStatus, errorThrown) {
			                console.log("AJAX 오류:", textStatus, errorThrown);
			            }
						
						
					});
               		
               	}
				
				
			});
			
			$(".paginate_button a").on(
					"click",
					function(e) {

						e.preventDefault();

						console.log('click');

						actionForm.find("input[name='pageNum']")
								.val($(this).attr("href"));
						actionForm.submit();
					});
		});
    
    </script>
  </body>
</html>

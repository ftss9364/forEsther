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
    <link rel="stylesheet" href="../resources/assets/css/pages/bomGet.css" />

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
                            <h2 class="page-title text-primary">BOM 상세정보</h1>
                            <div>
                            	<button type="button" id="btnCancle" class="btn btn-outline-primary">취소</button>
                            	<button type="button" id="btnRegistration" class="btn btn-primary">BOM 등록</button>
                            </div>
                          </header>
                          <hr />

                          
                          <div class="bigbox">
                          	<div class="smallbox-1">
                          		<ul>
							<li><h3>BOM 코드 : <c:out value="${bom.bom_code }" /></h3></li>
							<input type='hidden' id='bom_code' name='bom_code' value='<c:out value="${bom.bom_code}"/>'/>
							<li><h3>모품목 코드 : <c:out value="${fn:substring(bom.bom_code,2,7)}" /></h3></li>
							<li><h3>모품명 : <c:out value="${bom.product_name}" /></h3></li>
						</ul>
						
						<br/>
                          <!-- Vertical Scrollbar -->
                         <h4 class="text-primary">자품목 리스트</h4>
                          <div class="test-ui-bg scroll-list">
                            <div class="col-md-6 col-sm-12 div-table">
                              <div class="card overflow-hidden mb-4 div-scroll-list-1">
                                <div class="card-body overflow-auto">
                                   
                                   <!-- Table UI -->
			                          <div class="table-responsive text-nowrap">
			                          
			                          
			                            <table class="table table-bordered item-table table-1">
                              <thead>
                                <tr>
                                  <th>순번</th>
                                  <th>품목코드</th>
                                  <th>품목명</th>
                                  <th>규격</th>
                                  <th>필요수량</th>     
                                  <th></th>                             
                                </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${bom.bom_register_vo}" var="list">
                              	<c:set var="i" value="${i+1}" />
                                <tr>
                                  <td><c:out value="${i}"></c:out></td>
                                  <td class="td-box">
                                  	<a class="item-code move" href="${list.item_code}"><c:out value="${list.item_code}"/></a>
                                  </td>
                                  <td class="item-name"><c:out value="${list.item_vo.item_name}"/></td>
                                  <td><c:out value="${list.item_vo.item_specification}"/></td>
                                  <td>
	                                  <input class="item-required-quantity" type="text" value="${list.required_quantity }" />
                                  </td>
                                  <td class="td-btn">
                                  	<button type="button" class="btn rounded-pill btn-icon btn-danger minus-btn">
                                         <i class="bx bx-minus"></i>
                                      </button> 
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
                          <!-- / Vertical Scrollbar -->
                          	</div>
                          	<div class="smallbox-2">
                          		 <!-- Vertical Scrollbar -->
                          <div class="test-ui-bg scroll-list">
                            <div class="col-md-6 col-sm-12 div-table">
                            
                         <h4 class="text-primary">자품목 추가</h4>
                         <div class="table-filter">
                                <!-- <div class="search-combo-input">
                                   <div class="input-group input-group-merge">
                                      <input id="item_name_input" type="text" class="form-control" placeholder="품목명" aria-label="Search..."
                                      aria-describedby="basic-addon-search31" />
                                      <button type="submit" class="btn btn-secondary search-btn">
                                         <i class="bx bx-search"></i>
                                      </button> 
                                   </div>
                                </div> -->
                                <div class="search-combo">
	                                <div class="input-group input-group-merge search-combo-input">
							          <span class="input-group-text" id="basic-addon-search31"><i class="bx bx-search"></i></span>
							          <input type="text" class="form-control" id="item_name_input"  placeholder="품목명 검색..." aria-label="Search..." aria-describedby="basic-addon-search31">
							        </div>
                                </div>
                                <!-- / Search UI -->
                          </div>
                          	<hr/>
                              <div class="card overflow-hidden mb-4 div-scroll-list-2">
                                <div class="card-body overflow-auto">
                                   
                                   <!-- Table UI -->
			                          <div class="table-responsive text-nowrap">
			                          
			                          
			                            <table class="table table-bordered item-table table-2">
                              <thead>
                                <tr>
                                  <th>순번</th>
                                  <th>품목코드</th>
                                  <th>품목명</th>
                                  <th>규격</th>
                                  <th></th>                                  
                                </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${item_list}" var="item">
                                <c:set var="j" value="${j+1}"/>
                                <tr>
                                	<td><c:out value="${j}" /></td>
                                  <td class="td-box">
                                  	<a class="move" href="${item.item_code}"><c:out value="${item.item_code}"/></a>
                                  </td>
                                  <td><c:out value="${item.item_name}"/></td>
                                  <td><c:out value="${item.item_specification}"/></td>
                                  <td class="td-btn">
                                  	<button type="button" class="btn rounded-pill btn-icon btn-info plus-btn">
                                         <i class="bx bx-plus"></i>
                                      </button> 
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
                          <!-- / Vertical Scrollbar -->
                          	</div>
                          	
                          
                          
                          </div>
						

                     
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
    <script src="../resources/assets/js/pages/index.js"></script>
    <script type="text/javascript">
    	$(function () {
    		var bomCode = $("#bom_code").val();
			$(document).on("click",".plus-btn", function() {
				var $row = $(this).closest("tr");
				var itemCode = $row.find("td:nth-child(2) a").attr("href");
				$.ajax({
					type:"POST",
					url : "/bom/plus",
					data :{itemCode:itemCode},
					dataType:"json",
					success: function(response) {
		                if (response.success) {
		                    $row.remove();
		                    var newRowHtml = `
		                        <tr>
		                            <td></td>
		                            <td class="td-box">
		                                <a class="item-code move" href="`+response.item.item_code+`">`+response.item.item_code+`</a>
		                            </td>
		                            <td class="item-name">`+response.item.item_name+`</td>
		                            <td>`+response.item.item_specification+`</td>
		                            <td>
		                                <input class="item-required-quantity" type="text" value="0" />
		                            </td>
		                            <td class="td-btn">
                                  		<button type="button" class="btn rounded-pill btn-icon btn-danger minus-btn">
                                         <i class="bx bx-minus"></i>
                                      </button> 
                                  </td>
		                        </tr>
		                    `;
		                    $(".table-1 tbody").prepend(newRowHtml);
		                    $(".table-1 tbody tr").each(function(index,el) {
								$(el).find("td:first-child").text(index+1);
							});
		                    $(".table-2 tbody tr").each(function(index,el) {
								$(el).find("td:first-child").text(index+1);
							});
		                } else {
		                    // Handle error
		                }
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                console.log("AJAX 오류:", textStatus, errorThrown);
		            }
				});
				
			});
			
			$(document).on("click",".minus-btn",function() {
				var $row = $(this).closest("tr");
				var itemCode = $row.find("td:nth-child(2) a").attr("href");
				
				
				$.ajax({
					type:"POST",
					url : "/bom/plus",
					data :{itemCode:itemCode},
					dataType:"json",
					success: function(response) {
		                if (response.success) {
		                    $row.remove();
		                    var newRowHtml = `
		                        <tr>
		                            <td></td>
		                            <td class="td-box">
		                                <a class="move" href="`+response.item.item_code+`">`+response.item.item_code+`</a>
		                            </td>
		                            <td>`+response.item.item_name+`</td>
		                            <td>`+response.item.item_specification+`</td>
		                            <td class="td-btn">
                                  		<button type="button" class="btn rounded-pill btn-icon btn-info plus-btn">
                                         <i class="bx bx-plus"></i>
                                      </button> 
                                  </td>
		                        </tr>
		                    `;
		                    $(".table-2 tbody").prepend(newRowHtml);
		                    $(".table-2 tbody tr").each(function(index,el) {
								$(el).find("td:first-child").text(index+1);
							});
		                    $(".table-1 tbody tr").each(function(index,el) {
								$(el).find("td:first-child").text(index+1);
							});
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
				var $row = $(".table-2 tbody").find("tr");
				
				var row2 = $(".table-1 tbody tr").find(".move");
				var ItemCodeArr = [];
				
				$.each(row2, function(index,el) {
					ItemCodeArr[index] = el.text;
				});
				
				var requestData = {
					itemName : itemName,
					bomCode : bomCode,
					ItemCodeArr : ItemCodeArr						
				};
				
				$.ajax({
					type:"POST",
					contentType: "application/json",
					url : "/bom/search-item",
					data: JSON.stringify(requestData),
					dataType:"json",
					success: function(response) {
		                if (response.success) {
		                    $row.remove();
		                    
							if(response.items.length > 0){
								$.each(response.items, function(index,el) {
				                    var newRowHtml = `
				                        <tr>
				                            <td></td>
				                            <td class="td-box">
				                                <a class="move" href="`+el.item_code+`">`+el.item_code+`</a>
				                            </td>
				                            <td>`+el.item_name+`</td>
				                            <td>`+el.item_specification+`</td>
				                            <td>
		                                  	<button type="button" class="btn rounded-pill btn-icon btn-info plus-btn">
		                                         <i class="bx bx-plus"></i>
		                                      </button> 
		                                  </td>
				                        </tr>
				                    `;
				                    $(".table-2 tbody").prepend(newRowHtml);
								});
			                    $(".table-2 tbody tr").each(function(index,el) {
									$(el).find("td:first-child").text(index+1);
								});
								
							}
		                } else {
		                    // Handle error
		                }
		            },
		            error: function(jqXHR, textStatus, errorThrown) {
		                console.log("AJAX 오류:", textStatus, errorThrown);
		            }
					
					
				});
				
			});
			
			$(document).on("click","#btnRegistration", function () {
	            // 테이블의 각 행 데이터를 배열에 저장
	            var rowDataList = [];
	            
	            if($(".item-table.table-1 tbody tr").html() != null){
		            $(".item-table.table-1 tbody tr").each(function () {
		            	var itemRequiredQuantity = $(this).find(".item-required-quantity").val() 
		            	if(itemRequiredQuantity != 0){
		            		console.log(itemRequiredQuantity);
			                var rowData = {
			                	bomCode : bomCode,
			                    itemCode: $(this).find(".item-code").text(),
			                    itemName: $(this).find(".item-name").text(),
			                    itemRequiredQuantity : itemRequiredQuantity
			                    // 필요한 다른 데이터도 추가 가능
			                };
			                rowDataList.push(rowData);
		            	}
		            });
	            	
	            } else {
	                var rowData = {
	                	bomCode : bomCode,
	                    itemCode: "null",
	                    itemName: "null",
	                    itemRequiredQuantity : "null"
	                    // 필요한 다른 데이터도 추가 가능
	                };
	                rowDataList.push(rowData);
            		
	            	
	            }
	            
	            if(rowDataList.length == 0){
	            	var rowData = {
	                	bomCode : bomCode,
	                    itemCode: "null",
	                    itemName: "null",
	                    itemRequiredQuantity : "null"
	                    // 필요한 다른 데이터도 추가 가능
	                };
	                rowDataList.push(rowData);
	            }
	            

	            // AJAX 요청 보내기
	            $.ajax({
	                type: "POST",
	                url: "/bom/register", // 컨트롤러의 URL
	                data: JSON.stringify(rowDataList),
	                contentType: "application/json",
	                success: function () {
	                    // 성공 시 리다이렉트
	                    window.location.href = "/bom/list";
	                },
	                error: function () {
	                    alert("오류가 발생했습니다.");
	                }
	            });
	        });
			
			$(document).on("click","#btnCancle", function (){
				window.location.href = "/bom/list";
			});
    		
		});
    </script>
  </body>
</html>

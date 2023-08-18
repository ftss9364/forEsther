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
    <link rel="stylesheet" href="../resources/assets/css/pages/home.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="../resources/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <!-- <script src="../resources/assets/js/config.js"></script> -->
  </head>

  <body>
	
  <div class="col-xxl">
    <div class="card mb-4">
      <div class="card-body">
      <h6>재고수불부 내역</h6>
                       <!-- Table UI -->
                          <div class="table-responsive text-nowrap" style="width: 100%; heigth: 100%">
                            <table class="detailTable table table-bordered">
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
        
      </div>
    </div>
  </div>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="../resources/assets/js/pages/serialLotIrpd.js"></script>
  <!-- ### 커스텀 JavaScript 파일 삽입 위치 -->
      <script type="text/javascript">
	
    		serialLotIrpdService.get(`${serial_lot_code}`, function(list) {
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
							+ "<td>" + serial_lot_code +"</td>"
							+ "<td>" + item_name +"</td>"
							+ "<td>" + irpd_category +"</td>"
							+ "<td>" + variation_quantity +"</td>"
							+ "<td>" + stock_quantity +"</td>"
							+ "<td>" + supplier +"</td>"
							+ "<td>" + related_invoice +"</td></tr>";
					index = index + 1;
					
    			};
    			$(".detailTable tbody").append(str);
    			
    		})// end getList
    		
    </script>
</body>
</html>


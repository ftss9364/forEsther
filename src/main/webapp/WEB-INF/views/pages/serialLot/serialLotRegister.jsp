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
    <script src="../resources/assets/js/config.js"></script>
  </head>

  <body>
  <div class="col-xxl">
    <div class="card mb-4">
      <div class="card-body">
      
      <!-- 신규 등록 폼 -->
        <form id="registerForm" role="form" action="/serialLot/serialLotRegister" method="POST">
          <div class="row mb-3">
            <div class="col-md-6">
              <label class="col-form-label">품목명</label>
              <input type="text" class="form-control" id="item_name" name="item_name">
            </div>
            <div class="col-md-6">
              <label class="col-form-label">품목코드</label>
              <input type="text" class="form-control" id="item_code" name="item_code">
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-md-6">
              <label class="col-form-label">구매처</label>
              <input type="text" class="form-control" id="supplier" name="supplier">
            </div>
            <div class="col-md-6">
              <label class="col-form-label">수량</label>
              <input class="form-control" id="stock_quantity" name="stock_quantity" type="number">
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-md-6">
              <label class="col-form-label">유통기한</label>
              <input class="form-control" type="date" id="expiration_date" name="expiration_date">
            </div>
            <div class="col-md-6">
              <label class="col-form-label">연결전표</label>
              <input type="text" class="form-control" id="related_invoice" name="related_invoice">
            </div>
          </div>
          <div class="row justify-content-end">
            <div class="col-md-6">
              <button type="submit" class="btn btn-primary" id="submitBtn">등록</button>
            </div>
          </div>
        </form>
        
      </div>
    </div>
  </div>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <!-- ### 커스텀 JavaScript 파일 삽입 위치 -->
  <script src="../resources/assets/js/pages/serialLotRegister.js"></script>
</body>
</html>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">

        <!-- 메뉴 (Side Bar) -->
			    <%@ include file="../components/menuBar.jsp" %>
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
                            <h2 class="page-title text-primary">대시보드</h1>
                            <div>
                              <button type="button" class="btn btn-outline-primary">Primary</button>
                              <button type="button" class="btn btn-primary">Primary</button>
                            </div>
                          </header>
                          <hr />

                          <!-- Table UI -->
                          <div class="table-responsive text-nowrap">
                            <table class="table table-bordered">
                              <thead>
                                <tr>
                                  <th>Project</th>
                                  <th>Client</th>
                                  <th>Users</th>
                                  <th>Status</th>
                                  <th>Actions</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>
                                    <i class="fab fa-angular fa-lg text-danger me-3"></i> <strong>Angular Project</strong>
                                  </td>
                                  <td>Albert Cook</td>
                                  <td>
                                    <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Lilian Fuller"
                                      >
                                        <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Sophia Wilkerson"
                                      >
                                        <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Christina Parker"
                                      >
                                        <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                    </ul>
                                  </td>
                                  <td><span class="badge bg-label-primary me-1">Active</span></td>
                                  <td>
                                    <div class="dropdown">
                                      <button
                                        type="button"
                                        class="btn p-0 dropdown-toggle hide-arrow"
                                        data-bs-toggle="dropdown"
                                      >
                                        <i class="bx bx-dots-vertical-rounded"></i>
                                      </button>
                                      <div class="dropdown-menu">
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-edit-alt me-1"></i> Edit</a
                                        >
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-trash me-1"></i> Delete</a
                                        >
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td><i class="fab fa-react fa-lg text-info me-3"></i> <strong>React Project</strong></td>
                                  <td>Barry Hunter</td>
                                  <td>
                                    <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Lilian Fuller"
                                      >
                                        <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Sophia Wilkerson"
                                      >
                                        <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Christina Parker"
                                      >
                                        <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                    </ul>
                                  </td>
                                  <td><span class="badge bg-label-success me-1">Completed</span></td>
                                  <td>
                                    <div class="dropdown">
                                      <button
                                        type="button"
                                        class="btn p-0 dropdown-toggle hide-arrow"
                                        data-bs-toggle="dropdown"
                                      >
                                        <i class="bx bx-dots-vertical-rounded"></i>
                                      </button>
                                      <div class="dropdown-menu">
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-edit-alt me-1"></i> Edit</a
                                        >
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-trash me-1"></i> Delete</a
                                        >
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td><i class="fab fa-vuejs fa-lg text-success me-3"></i> <strong>VueJs Project</strong></td>
                                  <td>Trevor Baker</td>
                                  <td>
                                    <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Lilian Fuller"
                                      >
                                        <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Sophia Wilkerson"
                                      >
                                        <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Christina Parker"
                                      >
                                        <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                    </ul>
                                  </td>
                                  <td><span class="badge bg-label-info me-1">Scheduled</span></td>
                                  <td>
                                    <div class="dropdown">
                                      <button
                                        type="button"
                                        class="btn p-0 dropdown-toggle hide-arrow"
                                        data-bs-toggle="dropdown"
                                      >
                                        <i class="bx bx-dots-vertical-rounded"></i>
                                      </button>
                                      <div class="dropdown-menu">
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-edit-alt me-1"></i> Edit</a
                                        >
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-trash me-1"></i> Delete</a
                                        >
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                                <tr>
                                  <td>
                                    <i class="fab fa-bootstrap fa-lg text-primary me-3"></i> <strong>Bootstrap Project</strong>
                                  </td>
                                  <td>Jerry Milton</td>
                                  <td>
                                    <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Lilian Fuller"
                                      >
                                        <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Sophia Wilkerson"
                                      >
                                        <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                      <li
                                        data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        class="avatar avatar-xs pull-up"
                                        title="Christina Parker"
                                      >
                                        <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                                      </li>
                                    </ul>
                                  </td>
                                  <td><span class="badge bg-label-warning me-1">Pending</span></td>
                                  <td>
                                    <div class="dropdown">
                                      <button
                                        type="button"
                                        class="btn p-0 dropdown-toggle hide-arrow"
                                        data-bs-toggle="dropdown"
                                      >
                                        <i class="bx bx-dots-vertical-rounded"></i>
                                      </button>
                                      <div class="dropdown-menu">
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-edit-alt me-1"></i> Edit</a
                                        >
                                        <a class="dropdown-item" href="javascript:void(0);"
                                          ><i class="bx bx-trash me-1"></i> Delete</a
                                        >
                                      </div>
                                    </div>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                          <!--/ Table UI -->

                          <br/>
                          <br/>

                          <!-- Pagination UI -->
                          <nav aria-label="Page navigation">
                            <ul class="pagination">
                              <li class="page-item first">
                                <a class="page-link" href="javascript:void(0);"
                                  ><i class="tf-icon bx bx-chevrons-left"></i
                                ></a>
                              </li>
                              <li class="page-item prev">
                                <a class="page-link" href="javascript:void(0);"
                                  ><i class="tf-icon bx bx-chevron-left"></i
                                ></a>
                              </li>
                              <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">1</a>
                              </li>
                              <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">2</a>
                              </li>
                              <li class="page-item active">
                                <a class="page-link" href="javascript:void(0);">3</a>
                              </li>
                              <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">4</a>
                              </li>
                              <li class="page-item">
                                <a class="page-link" href="javascript:void(0);">5</a>
                              </li>
                              <li class="page-item next">
                                <a class="page-link" href="javascript:void(0);"
                                  ><i class="tf-icon bx bx-chevron-right"></i
                                ></a>
                              </li>
                              <li class="page-item last">
                                <a class="page-link" href="javascript:void(0);"
                                  ><i class="tf-icon bx bx-chevrons-right"></i
                                ></a>
                              </li>
                            </ul>
                          </nav>
                          <!-- / Pagination UI -->

                          <br/>
                          <br/>

                          <!-- Tab UI -->
                          <div class="test-ui-bg">
                            <div class="nav-align-top mb-4">
                              <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                  <button
                                    type="button"
                                    class="nav-link active"
                                    role="tab"
                                    data-bs-toggle="tab"
                                    data-bs-target="#navs-top-home"
                                    aria-controls="navs-top-home"
                                    aria-selected="true"
                                  >
                                    Home
                                  </button>
                                </li>
                                <li class="nav-item">
                                  <button
                                    type="button"
                                    class="nav-link"
                                    role="tab"
                                    data-bs-toggle="tab"
                                    data-bs-target="#navs-top-profile"
                                    aria-controls="navs-top-profile"
                                    aria-selected="false"
                                  >
                                    Profile
                                  </button>
                                </li>
                                <li class="nav-item">
                                  <button
                                    type="button"
                                    class="nav-link"
                                    role="tab"
                                    data-bs-toggle="tab"
                                    data-bs-target="#navs-top-messages"
                                    aria-controls="navs-top-messages"
                                    aria-selected="false"
                                  >
                                    Messages
                                  </button>
                                </li>
                              </ul>
                              <div class="tab-content">
                                <div class="tab-pane fade show active" id="navs-top-home" role="tabpanel">
                                  <p>
                                    Icing pastry pudding oat cake. Lemon drops cotton candy caramels cake caramels sesame snaps
                                    powder. Bear claw candy topping.
                                  </p>
                                  <p class="mb-0">
                                    Tootsie roll fruitcake cookie. Dessert topping pie. Jujubes wafer carrot cake jelly. Bonbon
                                    jelly-o jelly-o ice cream jelly beans candy canes cake bonbon. Cookie jelly beans marshmallow
                                    jujubes sweet.
                                  </p>
                                </div>
                                <div class="tab-pane fade" id="navs-top-profile" role="tabpanel">
                                  <p>
                                    Donut dragée jelly pie halvah. Danish gingerbread bonbon cookie wafer candy oat cake ice
                                    cream. Gummies halvah tootsie roll muffin biscuit icing dessert gingerbread. Pastry ice cream
                                    cheesecake fruitcake.
                                  </p>
                                  <p class="mb-0">
                                    Jelly-o jelly beans icing pastry cake cake lemon drops. Muffin muffin pie tiramisu halvah
                                    cotton candy liquorice caramels.
                                  </p>
                                </div>
                                <div class="tab-pane fade" id="navs-top-messages" role="tabpanel">
                                  <p>
                                    Oat cake chupa chups dragée donut toffee. Sweet cotton candy jelly beans macaroon gummies
                                    cupcake gummi bears cake chocolate.
                                  </p>
                                  <p class="mb-0">
                                    Cake chocolate bar cotton candy apple pie tootsie roll ice cream apple pie brownie cake. Sweet
                                    roll icing sesame snaps caramels danish toffee. Brownie biscuit dessert dessert. Pudding jelly
                                    jelly-o tart brownie jelly.
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- / Tab UI -->

                          <br/>
                          <br/>

                          <!-- Accordion -->
                          <div class="accordion mt-3" id="accordionExample">
                            <div class="card accordion-item active">
                              <h2 class="accordion-header" id="headingOne">
                                <button
                                  type="button"
                                  class="accordion-button"
                                  data-bs-toggle="collapse"
                                  data-bs-target="#accordionOne"
                                  aria-expanded="true"
                                  aria-controls="accordionOne"
                                >
                                  Accordion Item 1
                                </button>
                              </h2>
        
                              <div
                                id="accordionOne"
                                class="accordion-collapse collapse show"
                                data-bs-parent="#accordionExample"
                              >
                                <div class="accordion-body">
                                  Lemon drops chocolate cake gummies carrot cake chupa chups muffin topping. Sesame snaps icing
                                  marzipan gummi bears macaroon dragée danish caramels powder. Bear claw dragée pastry topping
                                  soufflé. Wafer gummi bears marshmallow pastry pie.
                                </div>
                              </div>
                            </div>
                            <div class="card accordion-item">
                              <h2 class="accordion-header" id="headingTwo">
                                <button
                                  type="button"
                                  class="accordion-button collapsed"
                                  data-bs-toggle="collapse"
                                  data-bs-target="#accordionTwo"
                                  aria-expanded="false"
                                  aria-controls="accordionTwo"
                                >
                                  Accordion Item 2
                                </button>
                              </h2>
                              <div
                                id="accordionTwo"
                                class="accordion-collapse collapse"
                                aria-labelledby="headingTwo"
                                data-bs-parent="#accordionExample"
                              >
                                <div class="accordion-body">
                                  Dessert ice cream donut oat cake jelly-o pie sugar plum cheesecake. Bear claw dragée oat cake
                                  dragée ice cream halvah tootsie roll. Danish cake oat cake pie macaroon tart donut gummies.
                                  Jelly beans candy canes carrot cake. Fruitcake chocolate chupa chups.
                                </div>
                              </div>
                            </div>
                            <div class="card accordion-item">
                              <h2 class="accordion-header" id="headingThree">
                                <button
                                  type="button"
                                  class="accordion-button collapsed"
                                  data-bs-toggle="collapse"
                                  data-bs-target="#accordionThree"
                                  aria-expanded="false"
                                  aria-controls="accordionThree"
                                >
                                  Accordion Item 3
                                </button>
                              </h2>
                              <div
                                id="accordionThree"
                                class="accordion-collapse collapse"
                                aria-labelledby="headingThree"
                                data-bs-parent="#accordionExample"
                              >
                                <div class="accordion-body">
                                  Oat cake toffee chocolate bar jujubes. Marshmallow brownie lemon drops cheesecake. Bonbon
                                  gingerbread marshmallow sweet jelly beans muffin. Sweet roll bear claw candy canes oat cake
                                  dragée caramels. Ice cream wafer danish cookie caramels muffin.
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- / Accordion -->

                          <br/>
                          <br/>

                          <!-- Vertical Scrollbar -->
                          <div class="test-ui-bg">
                            <div class="col-md-6 col-sm-12">
                              <div class="card overflow-hidden mb-4" style="height: 300px">
                                <h5 class="card-header">Vertical Scrollbar</h5>
                                <div class="card-body" id="vertical-example">
                                  <p>
                                    Sweet roll I love I love. Tiramisu I love soufflé cake tart sweet roll cotton candy cookie.
                                    Macaroon biscuit dessert. Bonbon cake soufflé jelly gummi bears lemon drops. Chocolate bar I
                                    love macaroon danish candy pudding. Jelly carrot cake I love tart cake bear claw macaroon candy
                                    candy canes. Muffin gingerbread sweet jujubes croissant sweet roll. Topping muffin carrot cake
                                    sweet. Toffee chocolate muffin I love croissant. Donut carrot cake ice cream ice cream. Wafer I
                                    love pie danish marshmallow cheesecake oat cake pie I love. Icing pie chocolate marzipan jelly
                                    ice cream cake.
                                  </p>
                                  <p>
                                    Marzipan oat cake caramels chocolate. Lemon drops cheesecake jelly beans sweet icing pudding
                                    croissant. Donut candy canes carrot cake soufflé. Croissant candy wafer pie I love oat cake
                                    lemon drops caramels jujubes. I love macaroon halvah liquorice cake. Danish sweet roll pudding
                                    cookie sweet roll I love. Jelly cake I love bear claw jujubes dragée gingerbread. I love cotton
                                    candy carrot cake halvah biscuit I love macaroon cheesecake tootsie roll. Chocolate cotton candy
                                    biscuit I love fruitcake cotton candy biscuit tart gingerbread. Powder oat cake I love.
                                    Cheesecake candy canes macaroon I love wafer I love sweet roll ice cream. Toffee cookie macaroon
                                    lemon drops tart candy canes. Gummies gummies pie tiramisu I love bear claw cheesecake.
                                  </p>
                                  <p>
                                    Marzipan oat cake caramels chocolate. Lemon drops cheesecake jelly beans sweet icing pudding
                                    croissant. Donut candy canes carrot cake soufflé. Croissant candy wafer pie I love oat cake
                                    lemon drops caramels jujubes. I love macaroon halvah liquorice cake. Danish sweet roll pudding
                                    cookie sweet roll I love. Jelly cake I love bear claw jujubes dragée gingerbread. I love cotton
                                    candy carrot cake halvah biscuit I love macaroon cheesecake tootsie roll. Chocolate cotton candy
                                    biscuit I love fruitcake cotton candy biscuit tart gingerbread. Powder oat cake I love.
                                    Cheesecake candy canes macaroon I love wafer I love sweet roll ice cream. Toffee cookie macaroon
                                    lemon drops tart candy canes. Gummies gummies pie tiramisu I love bear claw cheesecake.
                                  </p>
                                  <p>
                                    Sweet roll I love I love. Tiramisu I love soufflé cake tart sweet roll cotton candy cookie.
                                    Macaroon biscuit dessert. Bonbon cake soufflé jelly gummi bears lemon drops. Chocolate bar I
                                    love macaroon danish candy pudding. Jelly carrot cake I love tart cake bear claw macaroon candy
                                    candy canes. Muffin gingerbread sweet jujubes croissant sweet roll. Topping muffin carrot cake
                                    sweet. Toffee chocolate muffin I love croissant. Donut carrot cake ice cream ice cream. Wafer I
                                    love pie danish marshmallow cheesecake oat cake pie I love. Icing pie chocolate marzipan jelly
                                    ice cream cake.
                                  </p>
                                  <p>
                                    Sweet roll I love I love. Tiramisu I love soufflé cake tart sweet roll cotton candy cookie.
                                    Macaroon biscuit dessert. Bonbon cake soufflé jelly gummi bears lemon drops. Chocolate bar I
                                    love macaroon danish candy pudding. Jelly carrot cake I love tart cake bear claw macaroon candy
                                    candy canes. Muffin gingerbread sweet jujubes croissant sweet roll. Topping muffin carrot cake
                                    sweet. Toffee chocolate muffin I love croissant. Donut carrot cake ice cream ice cream. Wafer I
                                    love pie danish marshmallow cheesecake oat cake pie I love. Icing pie chocolate marzipan jelly
                                    ice cream cake.
                                  </p>
                                  <p>
                                    Sweet roll I love I love. Tiramisu I love soufflé cake tart sweet roll cotton candy cookie.
                                    Macaroon biscuit dessert. Bonbon cake soufflé jelly gummi bears lemon drops. Chocolate bar I
                                    love macaroon danish candy pudding. Jelly carrot cake I love tart cake bear claw macaroon candy
                                    candy canes. Muffin gingerbread sweet jujubes croissant sweet roll. Topping muffin carrot cake
                                    sweet. Toffee chocolate muffin I love croissant. Donut carrot cake ice cream ice cream. Wafer I
                                    love pie danish marshmallow cheesecake oat cake pie I love. Icing pie chocolate marzipan jelly
                                    ice cream cake.
                                  </p>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- / Vertical Scrollbar -->
                          
                          <!-- Dropbox UI-->
                          <div class="test-ui-container">
                            <label for="exampleFormControlSelect1" class="form-label">Example select</label>
                            <select class="form-select" id="exampleFormControlSelect1" aria-label="Default select example">
                              <option selected>Open this select menu</option>
                              <option value="1">One</option>
                              <option value="2">Two</option>
                              <option value="3">Three</option>
                            </select>
                          </div>
                          <!-- / Dropbox UI-->

                          <br/>
                          <br/>

                          <!-- Date Picker UI -->
                          <div class="test-ui-container">
                            <label for="html5-date-input" class="col-md-2 col-form-label">Date</label>
                            <div class="col-md-10">
                              <input class="form-control" type="date" value="2021-06-18" id="html5-date-input" />
                            </div>
                          </div>
                          <!-- / Date Picker UI -->

                          <br/>
                          <br/>

                          <!-- Search UI -->
                          <div class="test-ui-container">
                            <div class="input-group input-group-merge">
                              <span class="input-group-text" id="basic-addon-search31"><i class="bx bx-search"></i></span>
                              <input
                                type="text"
                                class="form-control"
                                placeholder="Search..."
                                aria-label="Search..."
                                aria-describedby="basic-addon-search31"
                              />
                            </div>
                          </div>
                          <!-- / Search UI -->

                          <br/>
                          <br/>

                          <!-- Checkboxes and Radios -->
                          <div class="card-body">
                            <div class="row gy-3">
                              <div class="col-md">
                                <small class="text-light fw-semibold">Checkboxes</small>
                                <div class="form-check mt-3">
                                  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                                  <label class="form-check-label" for="defaultCheck1"> Unchecked </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" checked />
                                  <label class="form-check-label" for="defaultCheck2"> Indeterminate </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" value="" id="defaultCheck3" checked />
                                  <label class="form-check-label" for="defaultCheck3"> Checked </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" value="" id="disabledCheck1" disabled />
                                  <label class="form-check-label" for="disabledCheck1"> Disabled Unchecked </label>
                                </div>
                                <div class="form-check">
                                  <input
                                    class="form-check-input"
                                    type="checkbox"
                                    value=""
                                    id="disabledCheck2"
                                    disabled
                                    checked
                                  />
                                  <label class="form-check-label" for="disabledCheck2"> Disabled Checked </label>
                                </div>
                              </div>
                              <div class="col-md">
                                <small class="text-light fw-semibold">Radio</small>
                                <div class="form-check mt-3">
                                  <input
                                    name="default-radio-1"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="defaultRadio1"
                                  />
                                  <label class="form-check-label" for="defaultRadio1"> Unchecked </label>
                                </div>
                                <div class="form-check">
                                  <input
                                    name="default-radio-1"
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="defaultRadio2"
                                    checked
                                  />
                                  <label class="form-check-label" for="defaultRadio2"> Checked </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="radio" value="" id="disabledRadio1" disabled />
                                  <label class="form-check-label" for="disabledRadio1"> Disabled unchecked </label>
                                </div>
                                <div class="form-check">
                                  <input
                                    class="form-check-input"
                                    type="radio"
                                    value=""
                                    id="disabledRadio2"
                                    disabled
                                    checked
                                  />
                                  <label class="form-check-label" for="disabledRadio2"> Disabled checkbox </label>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- / Checkboxes and Radios -->
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
  </body>
</html>

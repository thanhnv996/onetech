<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Tables</title>

<!-- Fontfaces CSS-->
<link href="${contextPath }/resources/admin/css/font-face.css"
	rel="stylesheet" media="all">
<link
	href="${contextPath }/resources/admin/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link
	href="${contextPath }/resources/admin/vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link
	href="${contextPath }/resources/admin/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link
	href="${contextPath }/resources/admin/vendor/bootstrap-4.1/bootstrap.min.css"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link
	href="${contextPath }/resources/admin/vendor/animsition/animsition.min.css"
	rel="stylesheet" media="all">
<link
	href="${contextPath }/resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="${contextPath }/resources/admin/vendor/wow/animate.css"
	rel="stylesheet" media="all">
<link
	href="${contextPath }/resources/admin/vendor/css-hamburgers/hamburgers.min.css"
	rel="stylesheet" media="all">
<link href="${contextPath }/resources/admin/vendor/slick/slick.css"
	rel="stylesheet" media="all">
<link
	href="${contextPath }/resources/admin/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link
	href="${contextPath }/resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="${contextPath }/resources/admin/css/theme.css"
	rel="stylesheet" media="all">

</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="index.html"> <img
							src="images/icon/logo.png" alt="CoolAdmin" />
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li><a href="${contextPath }/admin/order"> <i
								class="fas fa-chart-bar"></i>Hàng đã đặt
						</a></li>
						<li><a href="${contextPath }/admin/product"> <i
								class="fas fa-table"></i>Mặt hàng
						</a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<%@ include file="menu_sidebar.jsp"%>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<header class="header-desktop">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="header-wrap"></div>
					</div>
				</div>
			</header>
			<!-- END HEADER DESKTOP-->




			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<!-- DATA TABLE -->
								<h3 class="title-5 m-b-35">data table</h3>
								<form method="POST" action="${contextname}/admin/product/add"
									class="form-signin" enctype="multipart/form-data">
									<div class="modal-body">

										<div class="form-group">
											<input type="text" name="productName" class="form-control"
												placeholder="Tên sản phẩm" autofocus="true"></input>
										</div>

										<div class="form-group">
											<select name="menuCategoryId">
												<c:forEach items="${menuCategories }" var="category">
													<option value="${category.id }">${category.textDescription }</option>
												</c:forEach>
											</select>
										</div>

										<div class="form-group">
											<input type="text" name="productDescription"
												class="form-control" placeholder="Mô tả"></input>
										</div>

										<div class="form-group ">
											<input type="text" name="quantityInStock"
												class="form-control" placeholder="Số lượng"></input>
										</div>

										<div class="form-group ">
											<input type="text" name="buyPrice" class="form-control"
												placeholder="Giá"></input>
										</div>

										<div class="form-group">
											<input type="text" name="msrp" class="form-control"
												placeholder="Giảm Giá"></input>
										</div>


										<div class="form-group">
											File ảnh: <input type="file" name="fileImage" />
										</div>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Đóng</button>
										<button type="submit" class="btn btn-primary">Thêm</button>
									</div>
								</form>
								<div class="table-data__tool">
									<div class="table-data__tool-left">
										<div class="rs-select2--light rs-select2--md">
											<select class="js-select2" name="property">
												<option selected="selected">All Properties</option>
												<option value="">Option 1</option>
												<option value="">Option 2</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
										<div class="rs-select2--light rs-select2--sm">
											<select class="js-select2" name="time">
												<option selected="selected">Today</option>
												<option value="">3 Days</option>
												<option value="">1 Week</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
										<button class="au-btn-filter">
											<i class="zmdi zmdi-filter-list"></i>filters
										</button>
									</div>
									<div class="table-data__tool-right">
										<button type="button"
											class="btn btn-secondary mb-1 au-btn au-btn-icon au-btn--green au-btn--small"
											data-toggle="modal" data-target="#mediumModal">
											<i class="zmdi zmdi-plus"></i>add item
										</button>
										<div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
											<select class="js-select2" name="type">
												<option selected="selected">Export</option>
												<option value="">Option 1</option>
												<option value="">Option 2</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>
								<div class="table-responsive table-responsive-data2">
									<table class="table table-data2">
										<thead>
											<tr>
												<th><label class="au-checkbox"> <input
														type="checkbox"> <span class="au-checkmark"></span>
												</label></th>
												<th>Mã hàng</th>
												<th>Ảnh</th>
												<th>Tên</th>
												<th>Giá</th>
												<th>Còn lại</th>
												<th>Giảm giá</th>
												<th>Loại</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${products }" var="product">
												<tr class="tr-shadow">
													<td><label class="au-checkbox"> <input
															type="checkbox"> <span class="au-checkmark"></span>
													</label></td>
													<td>${product.id }</td>
													<td width="10%"><img
														src="${contextPath}/resources/images/${product.urlImage }" /></td>
													<td><span class="block-email">${product.productName }</span></td>
													<td><fmt:formatNumber value="${product.buyPrice}"
															type="number" /> ₫</td>
													<td class="desc">${product.quantityInStock}</td>
													<td>${product.msrp}</td>
													<td>${product.menucategory.textDescription}</td>
													<td>
														<div class="table-data-feature">
															<button class="item" data-toggle="tooltip"
																data-placement="top" title="Sửa">
																<i class="zmdi zmdi-edit"></i>
															</button>
															<a
																href="${contextPath }/admin/product/${product.id}/delete">
																<button class="item" data-toggle="tooltip"
																	data-placement="top" title="Xóa">
																	<i class="zmdi zmdi-delete"></i>
																</button>
															</a>

														</div>
													</td>
												</tr>
												<tr class="spacer"></tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- END DATA TABLE -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>


	<!-- modal medium -->
	<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog"
		aria-labelledby="mediumModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="mediumModalLabel">Thêm sản phẩm</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

			</div>
		</div>
	</div>
	<!-- end modal medium -->

	<!-- Jquery JS-->
	<script
		src="${contextPath }/resources/admin/vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script
		src="${contextPath }/resources/admin/vendor/bootstrap-4.1/popper.min.js"></script>
	<script
		src="${contextPath }/resources/admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script src="${contextPath }/resources/admin/vendor/slick/slick.min.js">
		
	</script>
	<script src="${contextPath }/resources/admin/vendor/wow/wow.min.js"></script>
	<script
		src="${contextPath }/resources/admin/vendor/animsition/animsition.min.js"></script>
	<script
		src="${contextPath }/resources/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script
		src="${contextPath }/resources/admin/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script
		src="${contextPath }/resources/admin/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script
		src="${contextPath }/resources/admin/vendor/circle-progress/circle-progress.min.js"></script>
	<script
		src="${contextPath }/resources/admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script
		src="${contextPath }/resources/admin/vendor/chartjs/Chart.bundle.min.js"></script>
	<script
		src="${contextPath }/resources/admin/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	<script src="${contextPath }/resources/admin/js/main.js"></script>

</body>

</html>
<!-- end document-->

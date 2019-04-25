<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/shop.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/shop_responsive.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/jquery.treemenu.css">

<t:wrapper>

	<!-- Home -->
	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll"
			data-image-src="${contextPath}/resources/images/shop_background.jpg"></div>
		<div class="home_overlay"></div>
		<div
			class="home_content d-flex flex-column align-items-center justify-content-center">
			<h2 class="home_title">
				<c:choose>
					<c:when test="${empty categoryShow}">
				        ${bigCategoryShow.textDescription}
				    </c:when>
					<c:otherwise>
				        ${categoryShow.textDescription}
				    </c:otherwise>
				</c:choose>
			</h2>
		</div>
	</div>

	<!-- Shop -->


	<div class="shop">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">

					<!-- Shop Sidebar -->
					<div class="shop_sidebar">
						<div class="sidebar_section">
							<div class="sidebar_title">Danh mục</div>
							<ul class="sidebar_categories">

								<ul class="tree">
									<c:if test="${not empty bigCategories}">
										<c:forEach items="${bigCategories}" var="bigCategory">
											<li><a href="${contextPath}/category/${bigCategory.id}">${bigCategory.textDescription}</a>
												<ul>
													<c:forEach items="${bigCategory.menucategories}"
														var="menuCategory">
														<li><a
															href="${contextPath}/category/${bigCategory.id}/${menuCategory.id}">${menuCategory.textDescription}</a></li>
													</c:forEach>
												</ul></li>
										</c:forEach>
									</c:if>
								</ul>
							</ul>
						</div>
						<div class="sidebar_section filter_by_section">
							<div class="sidebar_title">Lọc</div>
							<div class="sidebar_subtitle">Giá</div>
							<div class="filter_price">
								<div id="slider-range" class="slider_range"></div>
								<p>Khoảng:</p>
								<p>
									<input type="text" id="amount" class="amount" readonly
										style="border: 0; font-weight: bold;">
								</p>
							</div>
						</div>
						<div class="sidebar_section">
							<div class="sidebar_subtitle color_subtitle">Màu sắc</div>
							<ul class="colors_list">
								<li class="color"><a href="#" style="background: #b19c83;"></a></li>
								<li class="color"><a href="#" style="background: #000000;"></a></li>
								<li class="color"><a href="#" style="background: #999999;"></a></li>
								<li class="color"><a href="#" style="background: #0e8ce4;"></a></li>
								<li class="color"><a href="#" style="background: #df3b3b;"></a></li>
								<li class="color"><a href="#"
									style="background: #ffffff; border: solid 1px #e1e1e1;"></a></li>
							</ul>
						</div>
						<div class="sidebar_section">
							<div class="sidebar_subtitle brands_subtitle">Hãng</div>
							<ul class="brands_list">
								<li class="brand"><a href="#">Apple</a></li>
								<li class="brand"><a href="#">Beoplay</a></li>
								<li class="brand"><a href="#">Google</a></li>
								<li class="brand"><a href="#">Meizu</a></li>
								<li class="brand"><a href="#">OnePlus</a></li>
								<li class="brand"><a href="#">Samsung</a></li>
								<li class="brand"><a href="#">Sony</a></li>
								<li class="brand"><a href="#">Xiaomi</a></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="col-lg-9">

					<!-- Shop Content -->

					<div class="shop_content">
						<div class="shop_bar clearfix">
							<div class="shop_product_count">
								<span>${countProduct }</span> sản phẩm được tìm thấy
							</div>
							<div class="shop_sorting">
								<span>Sắp xếp:</span>
								<ul>
									<li><span class="sorting_text">đánh giá<i
											class="fas fa-chevron-down"></span></i>
										<ul>
											<li class="shop_sorting_button"
												data-isotope-option='{ "sortBy": "original-order" }'>đánh
												giá</li>
											<li class="shop_sorting_button"
												data-isotope-option='{ "sortBy": "name" }'>tên</li>
											<li class="shop_sorting_button"
												data-isotope-option='{ "sortBy": "price" }'>giá</li>
										</ul></li>
								</ul>
							</div>
						</div>

						<div class="product_grid">
							<div class="product_grid_border"></div>
							<!-- Shop Page For Big Category -->
							<c:if test="${empty categoryShow}">
								<c:forEach items="${bigCategoryShow.menucategories}"
									var="menuCategory">
									<c:if test="${not empty menuCategory.products}">
										<c:forEach items="${menuCategory.products}" var="product"
											varStatus="loopProduct">
											<!-- Product Item -->
											<div class="product_item is_new">
												<div class="product_border"></div>
												<div
													class="product_image d-flex flex-column align-items-center justify-content-center">
													<img
														src="${contextPath}/resources/images/${product.urlImage}"
														alt="">
												</div>
												<div class="product_content">
													<div class="product_price" style="color: red;">
														<fmt:formatNumber
															value="${(product.buyPrice*(1-product.msrp)).intValue()}"
															type="number" />
														₫
														<div>
															<del
																style="color: gray; font-size: 12px; font-weight: 600;">
																<fmt:formatNumber value="${product.buyPrice}"
																	type="number" />
																₫
															</del>
														</div>
													</div>
													<div class="product_name">
														<div>
															<a href="${contextPath}/product/${product.id}"
																tabindex="0" title="${product.productName}">${product.productName}</a>
														</div>
													</div>
												</div>
												<div class="product_fav">
													<i class="fas fa-heart"></i>
												</div>
												<ul class="product_marks">
													<c:if test="${(product.msrp*100).intValue() != 0 }">
														<li class="product_mark product_discount "
															style="display: inline-block; visibility: inherit; opacity: 1;">-${(product.msrp*100).intValue()}%</li>
													</c:if>
												</ul>
											</div>
										</c:forEach>
									</c:if>
								</c:forEach>
							</c:if>

							<!-- Shop Page For Category -->
							<c:if test="${not empty categoryShow}">
								<c:forEach items="${categoryShow.products}" var="product"
									varStatus="loopProduct">
									<!-- Product Item -->
									<div class="product_item is_new">
										<div class="product_border"></div>
										<div
											class="product_image d-flex flex-column align-items-center justify-content-center">
											<img
												src="${contextPath}/resources/images/${product.urlImage}"
												alt="">
										</div>
										<div class="product_content">
											<div class="product_price" style="color: red;">
												<fmt:formatNumber
													value="${(product.buyPrice*(1-product.msrp)).intValue()}"
													type="number" />
												₫
												<div>
													<del
														style="color: gray; font-size: 12px; font-weight: 600;">
														<fmt:formatNumber value="${product.buyPrice}"
															type="number" />
														₫
													</del>
												</div>
											</div>
											<div class="product_name">
												<div>
													<a href="${contextPath}/product/${product.id}" tabindex="0"
														title="${product.productName}">${product.productName}</a>
												</div>
											</div>
										</div>
										<div class="product_fav">
											<i class="fas fa-heart"></i>
										</div>
										<ul class="product_marks">
											<c:if test="${(product.msrp*100).intValue() != 0 }">
												<li class="product_mark product_discount "
													style="display: inline-block; visibility: inherit; opacity: 1;">-${(product.msrp*100).intValue()}%</li>
											</c:if>
										</ul>
									</div>
								</c:forEach>
							</c:if>
							<!-- Shop Page For Search -->
							<c:if test="${not empty productSearchs}">
								<c:forEach items="${productSearchs}" var="product"
									varStatus="loopProduct">
									<!-- Product Item -->
									<div class="product_item is_new">
										<div class="product_border"></div>
										<div
											class="product_image d-flex flex-column align-items-center justify-content-center">
											<img
												src="${contextPath}/resources/images/${product.urlImage}"
												alt="">
										</div>
										<div class="product_content">
											<div class="product_price" style="color: red;">
												<fmt:formatNumber
													value="${(product.buyPrice*(1-product.msrp)).intValue()}"
													type="number" />
												₫
												<div>
													<del
														style="color: gray; font-size: 12px; font-weight: 600;">
														<fmt:formatNumber value="${product.buyPrice}"
															type="number" />
														₫
													</del>
												</div>
											</div>
											<div class="product_name">
												<div>
													<a href="${contextPath}/product/${product.id}" tabindex="0"
														title="${product.productName}">${product.productName}</a>
												</div>
											</div>
										</div>
										<div class="product_fav">
											<i class="fas fa-heart"></i>
										</div>
										<ul class="product_marks">
											<c:if test="${(product.msrp*100).intValue() != 0 }">
												<li class="product_mark product_discount "
													style="display: inline-block; visibility: inherit; opacity: 1;">-${(product.msrp*100).intValue()}%</li>
											</c:if>
										</ul>
									</div>
								</c:forEach>
							</c:if>
						</div>
					</div>

					<!-- Shop Page Navigation -->

					<div class="shop_page_nav d-flex flex-row">
						<div
							class="page_prev d-flex flex-column align-items-center justify-content-center">
							<i class="fas fa-chevron-left"></i>
						</div>
						<ul class="page_nav d-flex flex-row">
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">...</a></li>
							<li><a href="#">21</a></li>
						</ul>
						<div
							class="page_next d-flex flex-column align-items-center justify-content-center">
							<i class="fas fa-chevron-right"></i>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	</div>
</t:wrapper>
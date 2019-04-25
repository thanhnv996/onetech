<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/product.css">

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/contact.css">

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/characteristics.css">

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:wrapper>
	<!-- Single Product -->

	<div class="single_product">
		<div class="container">
			<div class="row">

				<!-- Images -->
				<div class="col-lg-2 order-lg-1 order-2">
					<ul class="image_list">
						<li
							data-image="${contextPath}/resources/images/${product.urlImage}"><img
							src="${contextPath}/resources/images/${product.urlImage}" alt=""></li>
					</ul>
				</div>

				<!-- Selected Image -->
				<div class="col-lg-3 order-lg-2 order-1">
					<div class="image_selected">
						<img src="${contextPath}/resources/images/${product.urlImage}"
							alt="">
					</div>
				</div>

				<!-- Description -->
				<div class="col-lg-7 order-3">
					<div class="product_description">
						<div class="product_category">${product.menucategory.textDescription}
						</div>
						<div class="product_name_detail">${product.productName}
							<span class="badge badge-danger" style="">HOT</span>
						</div>
						<div class="rating_r rating_r_4 product_rating">
							<span class="oi" data-glyph="star" aria-hidden="true"></span> <span
								class="oi" data-glyph="star" aria-hidden="true"></span> <span
								class="oi" data-glyph="star" aria-hidden="true"></span> <span
								class="oi" data-glyph="star" aria-hidden="true"></span> <span
								class="oi" data-glyph="star" aria-hidden="true"></span> | <span
								style="padding: 0 5px 0 15px; color: gold;"> 252 </span> <span
								style="font-size: .875rem; color: #767676; text-transform: capitalize;">đánh
								giá</span> | <span style="padding: 0 5px 0 15px; color: gold;">
								753 </span> <span
								style="font-size: .875rem; color: #767676; text-transform: capitalize;">đã
								bán</span>
						</div>
						<div class="product_text">
							<p>
								Tình trạng:
								<c:if test="${ product.quantityInStock != 0 }">
									<span style="color: green; color: #00da00; font-weight: 600;">
										còn hàng </span>
								</c:if>
								<c:if test="${ product.quantityInStock == 0 }">
									<span style="color: red;"> hết hàng </span>
								</c:if>
							</p>
							<p>
								<del style="color: gray; font-size: 14px; font-weight: 600;">
									<fmt:formatNumber value="${product.buyPrice}" type="number" />
									₫
								</del>
								<span style="color: red; font-size: 20px; font-weight: 600;">
									<fmt:formatNumber
										value="${(product.buyPrice*(1-product.msrp)).intValue()}"
										type="number" /> <span style="font: red;">₫</span> <span
									class="discount_label"> giảm
										${(product.msrp*100).intValue()}%</span>
								</span>
							</p>
						</div>
						<div class="order_info d-flex flex-row">
							<form method="POST"
								action="${contextPath}/product/${product.id}/cart">
								<div class="clearfix" style="z-index: 1000;">
									<div class="row">
										<!-- Product Quantity -->
										<div class="col-lg-6 col-md-6 char_col">
											<div class="product_quantity clearfix">
												<span></span> <input id="quantity_input" type="text"
													name="quantityOrder" pattern="[0-9]*" value="1">
												<div class="quantity_buttons">
													<div id="quantity_inc_button"
														class="quantity_inc quantity_control">
														<i class="fas fa-chevron-up"></i>
													</div>
													<div id="quantity_dec_button"
														class="quantity_dec quantity_control">
														<i class="fas fa-chevron-down"></i>
													</div>
												</div>
											</div>
										</div>

										<!-- Char. Item -->
										<div class="col-lg-6 col-md-6 char_col">
											<div
												class="char_item d-flex flex-row align-items-center justify-content-start">
												<div class="char_icon">
													<img src="${contextPath}/resources/images/char_1.png"
														alt="">
												</div>
												<div class="char_content">
													<div class="char_title">Giao hàng miễn phí</div>
													<div class="char_subtitle">từ 100.000VNĐ</div>
												</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
									<div class="button_container">
										<button type="submit" class="button cart_button">Đặt
											hàng</button>
										<div class="product_fav">
											<i class="fas fa-heart"></i>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
			<hr align="center" width="90%"
				style="margin: auto; margin-top: 15px;">
			<div class="product_description detail"
				style="width: 90%; margin: 0 auto; padding: 25px;">
				<h3>Thông tin sản phẩm</h3>
				<div class="detail_product">${product.productDescription}</div>
			</div>



			<%@ include file="../contact/contact_body.jsp"%>
		</div>
	</div>
	<%@ include file="../views/common/viewed.jsp"%>
</t:wrapper>
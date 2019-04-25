<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Deals of the week -->

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/deals_featured.css">

<div class="deals_featured">
	<div class="container">
		<div class="row">
			<div
				class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">

				<!-- Deals -->

				<div class="deals">
					<div class="deals_title">Ưu đãi trong tuần</div>
					<div class="deals_slider_container">

						<!-- Deals Slider -->
						<div class="owl-carousel owl-theme deals_slider">

							<c:forEach items="${productBestDiscounts}" var="product"
								varStatus="loopProduct">
								<c:if test="${loopProduct.index <= 4 }">
									<!-- Deals Item -->
									<div class="owl-item deals_item">
										<div class="deals_image">
											<img
												src="${contextPath}/resources/images/${product.urlImage}"
												alt="">
										</div>
										<div class="deals_content">
											<div
												class="deals_info_line d-flex flex-row justify-content-start">
												<div class="deals_item_category">
													<a href="#">${product.menucategory.textDescription }</a>
												</div>
												<div class="deals_item_price_a ml-auto">
													<fmt:formatNumber value="${product.buyPrice}" type="number" />
													₫
												</div>
											</div>
											<div
												class="deals_info_line d-flex flex-row justify-content-start">
												<div class="deals_item_name">${product.productName}</div>
												<div class="deals_item_price ml-auto">
													<fmt:formatNumber
														value="${(product.buyPrice*(1-product.msrp)).intValue()}"
														type="number" />
													₫
												</div>
											</div>
											<div class="available">
												<div
													class="available_line d-flex flex-row justify-content-start">
													<div class="available_title">
														Còn lại: <span>6</span>
													</div>
													<div class="sold_title ml-auto">
														Đã bán: <span>28</span>
													</div>
												</div>
												<div class="available_bar">
													<span style="width: 17%"></span>
												</div>
											</div>
											<div
												class="deals_timer d-flex flex-row align-items-center justify-content-start">
												<div class="deals_timer_title_container">
													<div class="deals_timer_title">Nhanh lên</div>
													<div class="deals_timer_subtitle">Ưu đãi kết thúc
														sau:</div>
												</div>
												<div class="deals_timer_content ml-auto">
													<div class="deals_timer_box clearfix" data-target-time="">
														<div class="deals_timer_unit">
															<div id="deals_timer1_hr" class="deals_timer_hr"></div>
															<span>giờ</span>
														</div>
														<div class="deals_timer_unit">
															<div id="deals_timer1_min" class="deals_timer_min"></div>
															<span>phút</span>
														</div>
														<div class="deals_timer_unit">
															<div id="deals_timer1_sec" class="deals_timer_sec"></div>
															<span>giây</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>

					</div>

					<div class="deals_slider_nav_container">
						<div class="deals_slider_prev deals_slider_nav">
							<i class="fas fa-chevron-left ml-auto"></i>
						</div>
						<div class="deals_slider_next deals_slider_nav">
							<i class="fas fa-chevron-right ml-auto"></i>
						</div>
					</div>
				</div>

				<!-- Featured -->
				<div class="featured">
					<div class="tabbed_container">
						<div class="tabs">
							<ul class="clearfix">
								<li class="active">Bán chạy</li>
								<li>Đang giảm giá</li>
								<li>Xếp hạng tốt nhất</li>
							</ul>
							<div class="tabs_line">
								<span></span>
							</div>
						</div>

						<!-- Product Panel -->
						<div class="product_panel panel active">
							<div class="featured_slider slider">

								<!-- Slider Item -->
								<c:forEach items="${orderDetailBestSellers}" var="orderDetail">
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${contextPath}/resources/images/${orderDetail.product.urlImage}"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<fmt:formatNumber
														value="${(orderDetail.product.buyPrice*(1-orderDetail.product.msrp)).intValue()}"
														type="number" />
													₫
												</div>
												<div>
													<del
														style="color: gray; font-size: 12px; font-weight: 600;">
														<fmt:formatNumber value="${orderDetail.product.buyPrice}"
															type="number" />
														₫
													</del>
												</div>
												<div class="product_name">
													<div>
														<a href="product.html">${orderDetail.product.productName}</a>
													</div>
												</div>
												<div class="product_extras">
													<!--  div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>-->
													<a href="${contextPath }/product/${orderDetail.product.id}"><button
															class="product_cart_button">Chi tiết</button></a>
												</div>
											</div>
											<div class="product_fav">
												<i class="fas fa-heart"></i>
											</div>
											<ul class="product_marks">
												<c:if
													test="${(orderDetail.product.msrp*100).intValue() != 0 }">
													<li class="product_mark product_discount "
														style="display: inline-block; visibility: inherit; opacity: 1;">-${(orderDetail.product.msrp*100).intValue()}%</li>
												</c:if>
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>

						<!-- Product Panel -->

						<div class="product_panel panel">
							<div class="featured_slider slider">
								<!-- Slider Item -->
								<c:forEach items="${productBestDiscounts}" var="product">
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${contextPath}/resources/images/${product.urlImage}"
													alt="">
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<fmt:formatNumber
														value="${(product.buyPrice*(1-product.msrp)).intValue()}"
														type="number" />
													₫
												</div>
												<div>
													<del
														style="color: gray; font-size: 12px; font-weight: 600;">
														<fmt:formatNumber value="${product.buyPrice}"
															type="number" />
														₫
													</del>
												</div>
												<div class="product_name">
													<div>
														<a href="product.html">${product.productName}</a>
													</div>
												</div>
												<div class="product_extras">
													<!--  div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>-->
													<a href="${contextPath }/product/${product.id}"><button
															class="product_cart_button">Chi tiết</button></a>
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
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>

						<!-- Product Panel -->

						<div class="product_panel panel">
							<div class="featured_slider slider">

								<!-- Slider Item -->
								<c:forEach items="${productBestRates}" var="product">
									<div class="featured_slider_item">
										<div class="border_active"></div>
										<div
											class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
											<div
												class="product_image d-flex flex-column align-items-center justify-content-center">
												<img
													src="${contextPath}/resources/images/${product.urlImage}"
													alt="" style="">
											</div>
											<div class="product_content">
												<div class="product_price discount">
													<fmt:formatNumber
														value="${(product.buyPrice*(1-product.msrp)).intValue()}"
														type="number" />
													₫
												</div>
												<div>
													<del
														style="color: gray; font-size: 12px; font-weight: 600;">
														<fmt:formatNumber value="${product.buyPrice}"
															type="number" />
														₫
													</del>
												</div>
												<div class="rating_r rating_r_4 bestsellers_rating">
													<c:forEach begin="1" end="${product.rate}" varStatus="loop">
														<span class="oi" data-glyph="star" aria-hidden="true">
														</span>
													</c:forEach>
												</div>
												<div class="product_name">
													<div>
														<a href="product.html">${product.productName}</a>
													</div>
												</div>
												<div class="product_extras">
													<!--  div class="product_color">
														<input type="radio" checked name="product_color"
															style="background: #b19c83"> <input type="radio"
															name="product_color" style="background: #000000">
														<input type="radio" name="product_color"
															style="background: #999999">
													</div>-->
													<a href="${contextPath }/product/${product.id}"><button
															class="product_cart_button">Chi tiết</button></a>
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
												<li class="product_mark product_new">new</li>
											</ul>
										</div>
									</div>
								</c:forEach>

							</div>
							<div class="featured_slider_dots_cover"></div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>
</div>
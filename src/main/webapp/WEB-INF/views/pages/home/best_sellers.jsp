<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- Best Sellers -->

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/best_sellers.css">

<div class="best_sellers">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="tabbed_container">
					<div class="tabs clearfix tabs-right">
						<div class="new_arrivals_title">Bán chạy nhất</div>
						<ul class="clearfix">
							<li class="active">Top 20</li>
						</ul>
						<div class="tabs_line">
							<span></span>
						</div>
					</div>

					<div class="bestsellers_panel panel active">

						<!-- Best Sellers Slider -->

						<div class="bestsellers_slider slider">

							<!-- Best Sellers Item -->
							<c:forEach items="${orderDetailBestSellers}" var="orderDetail">
								<div class="bestsellers_item discount">
									<div
										class="bestsellers_item_container d-flex flex-row align-items-center justify-content-start">
										<div class="bestsellers_image">
											<img
												src="${contextPath}/resources/images/${orderDetail.product.urlImage}"
												alt="">
										</div>
										<div class="bestsellers_content">
											<div class="bestsellers_category">
												<a href="#">Headphones</a>
											</div>
											<div class="bestsellers_name">
												<a href="${contextPath}/product/${orderDetail.product.id}">${orderDetail.product.productName}</a>
											</div>
											<div class="rating_r rating_r_4 bestsellers_rating">
												<span class="oi" data-glyph="star" aria-hidden="true"></span>
												<span class="oi" data-glyph="star" aria-hidden="true"></span>
												<span class="oi" data-glyph="star" aria-hidden="true"></span>
												<span class="oi" data-glyph="star" aria-hidden="true"></span>
												<span class="oi" data-glyph="star" aria-hidden="true"></span>
											</div>
											<div class="bestsellers_price discount">
												<fmt:formatNumber
													value="${(orderDetail.product.buyPrice*(1-orderDetail.product.msrp)).intValue()}"
													type="number" />
												₫<span><fmt:formatNumber value="${orderDetail.product.buyPrice}"
														type="number" /> ₫</span>
											</div>
										</div>
									</div>
									<div class="bestsellers_fav active">
										<i class="fas fa-heart"></i>
									</div>
									<ul class="bestsellers_marks">
										<li class="bestsellers_mark bestsellers_discount">-25%</li>
										<li class="bestsellers_mark bestsellers_new">new</li>
									</ul>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
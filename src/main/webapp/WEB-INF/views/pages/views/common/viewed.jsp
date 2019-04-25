<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Recently Viewed -->

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/viewed.css">

<div class="viewed">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="viewed_title_container">
					<h3 class="viewed_title">Đã xem gần đây</h3>
					<div class="viewed_nav_container">
						<div class="viewed_nav viewed_prev">
							<i class="fas fa-chevron-left"></i>
						</div>
						<div class="viewed_nav viewed_next">
							<i class="fas fa-chevron-right"></i>
						</div>
					</div>
				</div>

				<div class="viewed_slider_container">

					<!-- Recently Viewed Slider -->

					<div class="owl-carousel owl-theme viewed_slider">



						<!-- Recently Viewed Item -->
						<c:if test="${not empty productVieweds }">
							<c:forEach items="${productVieweds}" var="productViewed"
								varStatus="loopProductViewed">
								<div class="owl-item">
									<div
										class="viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
										<div class="viewed_image">
											<img
												src="${contextPath}/resources/images/${productViewed.urlImage}"
												alt="">
										</div>
										<div class="viewed_content text-center">
											<div class="bestsellers_price discount" style="color: red;">
												<fmt:formatNumber
													value="${(productViewed.buyPrice*(1-productViewed.msrp)).intValue()}"
													type="number" />
												₫
											</div>
											<div>
												<del style="color: gray; font-size: 12px; font-weight: 600;">
													<fmt:formatNumber value="${productViewed.buyPrice}"
														type="number" />
													₫
												</del>
											</div>
											<div class="viewed_name">
												<a href="#">${productViewed.productName}</a>
											</div>
										</div>
										<ul class="item_marks">
											<c:if test="${(productViewed.msrp*100).intValue() != 0 }">
												<li class="item_mark item_discount "
													style="display: inline-block; visibility: inherit; opacity: 1;">-${(productViewed.msrp*100).intValue()}%</li>
											</c:if>
										</ul>
									</div>
								</div>
							</c:forEach>
						</c:if>

						<!-- Recently Viewed Item -->
						<div class="owl-item">
							<div
								class="viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
								<div class="viewed_image">
									<img src="${contextPath}/resources/images/view_1.jpg" alt="">
								</div>
								<div class="viewed_content text-center">
									<div class="viewed_price">
										$225<span>$300</span>
									</div>
									<div class="viewed_name">
										<a href="#">Beoplay H7</a>
									</div>
								</div>
								<ul class="item_marks">
									<li class="item_mark item_discount">-25%</li>
									<li class="item_mark item_new">new</li>
								</ul>
							</div>
						</div>

						<!-- Recently Viewed Item -->
						<div class="owl-item">
							<div
								class="viewed_item d-flex flex-column align-items-center justify-content-center text-center">
								<div class="viewed_image">
									<img src="${contextPath}/resources/images/view_2.jpg" alt="">
								</div>
								<div class="viewed_content text-center">
									<div class="viewed_price">$379</div>
									<div class="viewed_name">
										<a href="#">LUNA Smartphone</a>
									</div>
								</div>
								<ul class="item_marks">
									<li class="item_mark item_discount">-25%</li>
									<li class="item_mark item_new">new</li>
								</ul>
							</div>
						</div>

						<!-- Recently Viewed Item -->
						<div class="owl-item">
							<div
								class="viewed_item d-flex flex-column align-items-center justify-content-center text-center">
								<div class="viewed_image">
									<img src="${contextPath}/resources/images/view_3.jpg" alt="">
								</div>
								<div class="viewed_content text-center">
									<div class="viewed_price">$225</div>
									<div class="viewed_name">
										<a href="#">Samsung J730F...</a>
									</div>
								</div>
								<ul class="item_marks">
									<li class="item_mark item_discount">-25%</li>
									<li class="item_mark item_new">new</li>
								</ul>
							</div>
						</div>

						<!-- Recently Viewed Item -->
						<div class="owl-item">
							<div
								class="viewed_item is_new d-flex flex-column align-items-center justify-content-center text-center">
								<div class="viewed_image">
									<img src="${contextPath}/resources/images/view_4.jpg" alt="">
								</div>
								<div class="viewed_content text-center">
									<div class="viewed_price">$379</div>
									<div class="viewed_name">
										<a href="#">Huawei MediaPad...</a>
									</div>
								</div>
								<ul class="item_marks">
									<li class="item_mark item_discount">-25%</li>
									<li class="item_mark item_new">new</li>
								</ul>
							</div>
						</div>

						<!-- Recently Viewed Item -->
						<div class="owl-item">
							<div
								class="viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
								<div class="viewed_image">
									<img src="${contextPath}/resources/images/view_5.jpg" alt="">
								</div>
								<div class="viewed_content text-center">
									<div class="viewed_price">
										$225<span>$300</span>
									</div>
									<div class="viewed_name">
										<a href="#">Sony PS4 Slim</a>
									</div>
								</div>
								<ul class="item_marks">
									<li class="item_mark item_discount">-25%</li>
									<li class="item_mark item_new">new</li>
								</ul>
							</div>
						</div>

						<!-- Recently Viewed Item -->
						<div class="owl-item">
							<div
								class="viewed_item d-flex flex-column align-items-center justify-content-center text-center">
								<div class="viewed_image">
									<img src="${contextPath}/resources/images/view_6.jpg" alt="">
								</div>
								<div class="viewed_content text-center">
									<div class="viewed_price">$375</div>
									<div class="viewed_name">
										<a href="#">Speedlink...</a>
									</div>
								</div>
								<ul class="item_marks">
									<li class="item_mark item_discount">-25%</li>
									<li class="item_mark item_new">new</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
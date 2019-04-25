<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Hot New Arrivals -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/new_arrivals.css">

<c:set var="lastIndexMenuCategory" value="${0}" scope="page" />
<c:set var="lastIndexProduct" value="${0}" scope="page" />


<div class="first_new_arrivals"></div>
<c:if test="${not empty bigCategories}">
	<c:forEach items="${bigCategories}" var="bigCategory">
		<c:if test="${ bigCategory.emptyProduct != true}">
			<div class="new_arrivals">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="tabbed_container">
								<div class="tabs clearfix tabs-right">
									<div class="new_arrivals_title">${bigCategory.textDescription}</div>
									<ul class="clearfix">
										<li class="active">HOT</li>

									</ul>
									<div class="tabs_line">
										<span></span>
									</div>
								</div>
								<div class="row">
									<div class="col-lg-9" style="z-index: 1;">
										<!-- Product Panel -->
										<div class="product_panel panel active">
											<div class="arrivals_slider slider">
												<c:if test="${ not empty bigCategory.menucategories}">
													<c:forEach items="${bigCategory.menucategories}"
														var="menuCategory" varStatus="loopMenuCategory">
														<c:if test="${not empty menuCategory.products}">
															<c:set var="lastIndexMenuCategory"
																value="${loopMenuCategory.index}" />
															<c:forEach items="${menuCategory.products}" var="product"
																varStatus="loopProduct">
																<c:if test="${loopProduct.index <= 3 }">
																	<c:set var="lastIndexProduct"
																		value="${loopProduct.index}" />
																	<!-- Slider Item -->
																	<div class="arrivals_slider_item">
																		<div class="border_active"></div>
																		<div
																			class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
																			<div
																				class="product_image d-flex flex-column align-items-center justify-content-center">
																				<img
																					src="${contextPath}/resources/images/${product.urlImage}"
																					alt="">
																			</div>
																			<div class="product_content">
																				<div class="bestsellers_price discount"
																					style="color: red;">
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
																						<a href="${contextPath}/product/${product.id}">${product.productName}</a>
																					</div>
																				</div>
																				<div class="product_extras">
																					<div class="product_color">
																						<input type="radio" checked name="product_color"
																							style="background: #b19c83"> <input
																							type="radio" name="product_color"
																							style="background: #000000"> <input
																							type="radio" name="product_color"
																							style="background: #999999">
																					</div>
																					<a href="${contextPath}/product/${product.id}"><button
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
																			</ul>
																		</div>
																	</div>
																	<!-- end slider item -->
																</c:if>
															</c:forEach>
														</c:if>
													</c:forEach>
												</c:if>
											</div>
											<div class="arrivals_slider_dots_cover"></div>
										</div>
									</div>

									<div class="col-lg-3">
										<div class="arrivals_single clearfix">
											<div
												class="d-flex flex-column align-items-center justify-content-center">
												<div class="arrivals_single_image">
													<img
														src="${contextPath}/resources/images/${bigCategory.menucategories.get(lastIndexMenuCategory).products[lastIndexProduct].urlImage}"
														alt="">
												</div>
												<div class="arrivals_single_content">
													<div class="arrivals_single_category">
														<a href="#">${bigCategory.menucategories.get(lastIndexMenuCategory).textDescription}</a>
													</div>
													<div class="arrivals_single_name_container clearfix">
														<div class="arrivals_single_name">
															<a href="#">${bigCategory.menucategories.get(lastIndexMenuCategory).products[lastIndexProduct].productName}</a>
														</div>
														<div class="arrivals_single_price text-right">
															<fmt:formatNumber
																value="${bigCategory.menucategories.get(lastIndexMenuCategory).products[lastIndexProduct].buyPrice}"
																type="number" />
															<span style="font: red;">VNĐ</span>
														</div>
													</div>
													<div class="rating_r rating_r_4 arrivals_single_rating">
														<span class="oi" data-glyph="star" aria-hidden="true"></span>
														<span class="oi" data-glyph="star" aria-hidden="true"></span>
														<span class="oi" data-glyph="star" aria-hidden="true"></span>
														<span class="oi" data-glyph="star" aria-hidden="true"></span>
														<span class="oi" data-glyph="star" aria-hidden="true"></span>
													</div>
													<a
														href="${contextPath}/product/${bigCategory.menucategories.get(lastIndexMenuCategory).products[lastIndexProduct].id}"><button
															class="arrivals_single_button">Chi tiết</button></a>
												</div>
												<div class="arrivals_single_fav product_fav active">
													<i class="fas fa-heart"></i>
												</div>
												<ul class="arrivals_single_marks product_marks">
													<li class="arrivals_single_mark product_mark product_new">new</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:if>
	</c:forEach>
</c:if>
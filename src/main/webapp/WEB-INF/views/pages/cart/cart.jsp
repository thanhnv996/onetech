<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/cart_styles.css">
<link href="${contextPath}/resources/css/order-confirm.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/characteristics.css">


<t:wrapper>
	<div class="row">
		<div class="col-sm-7">
			<!-- Cart -->
			<div class="cart_section">
				<div class="container">
					<div class="row">
						<div class="col-lg-10 offset-lg-1">
							<div class="cart_container">
								<div class="cart_title">Giỏ hàng</div>

								<!-- Product detail -->
								<div class="cart_items">
									<ul class="cart_list">
										<li class="cart_item clearfix">
											<div class="cart_item_image">
												<img
													src="${contextPath}/resources/images/${product.urlImage}"
													alt="">
											</div>
											<div
												class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
												<div class="cart_item_name cart_info_col">
													<div class="cart_item_title">Tên</div>
													<div class="cart_item_text">${product.productName}</div>
												</div>
												<div class="cart_item_color cart_info_col">
													<div class="cart_item_title">Màu</div>
													<div class="cart_item_text">
														<span style="background-color: #999999;"></span>Silver
													</div>
												</div>
												<div class="cart_item_quantity cart_info_col">
													<div class="cart_item_title">Số lượng</div>
													<div class="cart_item_text">${quantityOrder }</div>
												</div>
												<div class="cart_item_price cart_info_col">
													<div class="cart_item_title">Giá</div>
													<div class="cart_item_text">
														<fmt:formatNumber value="${product.buyPrice}"
															type="number" />
														₫
														<div class="discount_label">giảm
															${(product.msrp*100).intValue()}%</div>
													</div>
												</div>
												<div class="cart_item_total cart_info_col">
													<div class="cart_item_title">Tổng</div>
													<div class="cart_item_text" style="color: red;">
														<fmt:formatNumber
															value="${(product.buyPrice*(1-product.msrp)*quantityOrder).intValue()}"
															type="number" />
														₫
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>

								<!-- Coupon code check -->
								<div class="cart_buttons">
									<div class="panel-footer plan">
										<form action="${contextPath}/check-coupon" id="searchForm">
											<div class="form-group">
												<table>
													<tr>
														<th><input name="couponCode" type="text"
															class="form-control" placeholder="Nhập mã giảm giá ..."
															size=25 /> <input type="hidden"
															name="${_csrf.parameterName}" value="${_csrf.token}" />
															<input type="hidden" name="buyPriceHasDiscount"
															value="${(product.buyPrice*(1-product.msrp)*quantityOrder).intValue()}" /></th>
														<th><input type="submit" value="Kiểm tra"
															class="button cart_button_checkout"
															style="zoom: 50%; margin-left: 50px;"></th>
														<th><span class="message"
															style="zoom: 50%; margin-left: 50px;"></span></th>
													</tr>
												</table>
											</div>
										</form>
									</div>
								</div>


								<!-- Order Total -->
								<div class="order_total">
									<div class="order_total_content text-md-right">
										<div class="order_total_title">Tổng:</div>
										<div class="order_total_amount" style="color: red;">
											<fmt:formatNumber
												value="${(product.buyPrice*(1-product.msrp)*quantityOrder).intValue()}"
												type="number" />
											₫
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-5 ">
			<div class="cart_section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="cart_container">
								<div class="cart_title">Thông tin</div>
								<div class="cart_items">
									<form:form method="POST" action="${contextPath}/order"
										modelAttribute="customerForm" class="form-signin">
										<spring:bind path="customerName">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<form:input type="text" path="customerName"
													class="form-control" placeholder="Họ tên" autofocus="true"></form:input>
												<form:errors path="customerName"></form:errors>
											</div>
										</spring:bind>

										<spring:bind path="phone">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<form:input type="text" path="phone" class="form-control"
													placeholder="Số điện thoại"></form:input>
												<form:errors path="phone"></form:errors>
											</div>
										</spring:bind>

										<spring:bind path="addressLine1">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<form:input type="text" path="addressLine1"
													class="form-control" placeholder="Địa chỉ"></form:input>
												<form:errors path="addressLine1"></form:errors>
											</div>
										</spring:bind>

										<spring:bind path="city">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<form:input type="text" path="city" class="form-control"
													placeholder="Thành phố"></form:input>
												<form:errors path="city"></form:errors>
											</div>
										</spring:bind>

										<!--input type="hidden" name="orderJSON" value='${orderJSON}' /-->
										<input class="couponCode" type="hidden" name="couponCode"
											value='' />

										<input type="hidden" name="productId" value="${product.id}" />
										<input type="hidden" name="quantityOrder"
											value="${quantityOrder}" />
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />

										<div class="row" style="zoom: 50%;">
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

											<!-- Char. Item -->
											<div class="col-lg-6 col-md-6 char_col">

												<div
													class="char_item d-flex flex-row align-items-center justify-content-start">
													<div class="char_icon">
														<img src="${contextPath}/resources/images/char_2.png"
															alt="">
													</div>
													<div class="char_content">
														<div class="char_title">Đổi trả trong 7 ngày</div>
														<div class="char_subtitle"></div>
													</div>
												</div>
											</div>
										</div>
										<br>
										<button class="button cart_button_checkout" type="submit">Đặt
											hàng</button>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../views/common/viewed.jsp"%>
</t:wrapper>

<script src="${contextPath}/resources/js/cart_custom.js"></script>


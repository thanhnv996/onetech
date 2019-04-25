<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/cart.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/cart_responsive.css">
<link href="${contextPath}/resources/css/order-success.css"
	rel="stylesheet">
<t:wrapper>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-heading">
				<h3>Đặt hàng thành công</h3>
			</div>
			<div class="panel-body">
				<!-- Product detail -->
				<div class="cart_items">
					<ul class="cart_list">
						<li class="cart_item clearfix">
							<div class="cart_item_image">
								<img src="${contextPath}/resources/images/${product.urlImage}"
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
										<fmt:formatNumber value="${product.buyPrice}" type="number" />
										₫
										<c:if test="${product.msrp > 0 }">
											<div class="discount_label">giảm
												${(product.msrp*100).intValue()}%</div>
										</c:if>
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
			</div>
			<div class="panel-footer plan">
				<h3 class="sumPrice">
					<fmt:formatNumber value="${sumPrice}" type="number" />
					₫
				</h3>
				<c:if test="${not empty couponCode}">
       		(-10% mã giảm giá)
       	</c:if>
				<p>
					Cảm ơn <b> ${customer.customerName } </b>,<br> Mã đặt hàng của
					bạn là : <b> ${order.id} </b>.<br> Chúng tôi sẽ vận chuyển
					hàng hóa sớm nhất tới địa chỉ: <b>${customer.addressLine1}</b><br>
					Xin vui lòng giữ liên lạc: <b>${customer.phone}</b>.<br>
				</p>
			</div>
		</div>
	</div>
</t:wrapper>

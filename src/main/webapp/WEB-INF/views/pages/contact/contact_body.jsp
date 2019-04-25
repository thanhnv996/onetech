<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/product_styles.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/product_responsive.css">

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/contact_styles.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/contact_responsive.css">

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<div class="product_description contact"
	style="width: 90%; margin: 0 auto; padding: 25px;">
	<h3>Liên hệ</h3>
	<!-- Contact Info -->
	<h4>I. Thông Tin Liên Hệ Mua Hàng</h4>
	<div class="contact_info">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div
						class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

						<!-- Contact Item -->
						<div
							class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image">
								<img src="${contextPath}/resources/images/contact_1.png" alt="">
							</div>
							<div class="contact_info_content">
								<div class="contact_info_title">Phone</div>
								<div class="contact_info_text">
									<strong style="color: #20c997;"> ${phone} </strong>
								</div>
							</div>
						</div>

						<!-- Contact Item -->
						<div
							class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image">
								<img src="${contextPath}/resources/images/contact_2.png" alt="">
							</div>
							<div class="contact_info_content">
								<div class="contact_info_title">Email</div>
								<div class="contact_info_text">
									<strong style="color: #20c997;">${email}</strong>
								</div>
							</div>
						</div>

						<!-- Contact Item -->
						<div
							class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image">
								<img src="${contextPath}/resources/images/contact_3.png" alt="">
							</div>
							<div class="contact_info_content">
								<div class="contact_info_title">Địa chỉ</div>
								<div class="contact_info_text">
									<strong style="color: #20c997;">★
										${addressList.get(0).getValue()}.</strong>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<ul>
		<!--  
					<li>Support Mobile Zalo/Viber/WhatsApp/iMessage Số: 0378 594
						900</li>
					<li>Email hỗ trợ chung: thanhnv996@gmail.com</li>
					<li>Email báo giá mua số lượng: thanhnv996@gmail.com</li>
					<li>★ Địa chỉ 1: Số 3 Duy Tân - Cầu Giấy - Hà Nội.</li>
					-->
		<li>Địa chỉ 2: <strong style="color: #20c997;">${addressList.get(1).getValue()}.</strong></li>
		<li>Địa chỉ 3: Các tỉnh thành khác sẽ gửi chuyển phát nhanh COD
			quý khách nhận được hàng rồi thanh toán tiền trực tiếp cho người giao
			hàng bên bưu điện.</li>
	</ul>

	<h4>II. Hình Thức Thanh Toán Khi Mua Hàng</h4>
	<ul>
		<li>Khách hàng trực tiếp qua của hàng tại Hà Nội cũng như các địa
			chỉ được công bố trên website.</li>
		<li>Giao hàng thu tiền tận nơi: Nhân viên giao hàng sẽ giao hàng
			đến tận địa chỉ mà khách hàng yêu cầu, khách hàng nhận hàng và thanh
			toán tiền hàng và chi phí phát sinh ( nếu có).</li>
		<li>Chuyển khoản qua tài khoản Ngân hàng hoặc qua Internet
			Banking: Khách hàng có thể tới bất kì phòng giao dịch, ATM hoặc sử
			dụng tính năng Internet Banking để chuyển tiền vào một trong các tài
			khoản sau: <br> Tài Khoản Đại Diện: <strong
			style="color: #20c997;">${bankName}</strong>
			<ul>
				<c:forEach items="${bankList}" var="bank">
					<li><strong style="color: #20c997;">
							${bank.getValue() }</strong></li>
				</c:forEach>
			</ul>
		</li>
	</ul>
</div>

<!-- Map -->

<div class="contact_map">
	<div id="google_map" class="google_map">
		<div class="map_container">
			<div id="map"></div>
		</div>
	</div>
</div>

<script src="${contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script>
	var map;
	function initMap() {
		map = new google.maps.Map(document.getElementById('map'), {
			center : {
				lat : 21.030404,
				lng : 105.785957
			},
			zoom : 20
		});
	}
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA17fyz1N4vzbvIPGpg3NjZb6U3455A3oo&callback=initMap"
	async defer></script>
<!-- 
		AIzaSyADYjhVGII6USSSBVrrdlmoUSiaoOgmGAs
		AIzaSyA17fyz1N4vzbvIPGpg3NjZb6U3455A3oo
		 -->
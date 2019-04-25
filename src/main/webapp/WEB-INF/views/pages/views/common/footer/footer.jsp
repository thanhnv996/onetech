<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="brands.jsp"%>
<%@ include file="newsletter.jsp"%>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/pages/footer.css">

<footer class="footer">
	<div class="container">
		<div class="row">

			<div class="col-lg-3 footer_col">
				<div class="footer_column footer_contact">
					<div class="logo_container">
						<div class="logo">
							<a href="#">OneTech</a>
						</div>
					</div>
					<div class="footer_title">Có câu hỏi? Gọi chúng tôi 24/7</div>
					<div class="footer_phone">${phone}</div>
					<div class="footer_contact_text">
						<p>${addressList.get(0).getValue() }</p>
					</div>
					<div class="footer_social">
						<ul>
							<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#"><i class="fab fa-youtube"></i></a></li>
							<li><a href="#"><i class="fab fa-google"></i></a></li>
							<li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="col-lg-2 offset-lg-2">
				<div class="footer_column">
					<div class="footer_title">Tìm kiếm nhanh</div>
					<ul class="footer_list">
						<li><a href="#">Máy tính & Laptops</a></li>
						<li><a href="#">Cameras & Photos</a></li>
						<li><a href="#">Phần cứng</a></li>
						<li><a href="#">Smartphones & Tablets</a></li>
						<li><a href="#">TV & Audio</a></li>
					</ul>
					<div class="footer_subtitle">Dụng cụ</div>
					<ul class="footer_list">
						<li><a href="#">Điện tử xe hơi</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2">
				<div class="footer_column">
					<ul class="footer_list footer_list_2">
						<li><a href="#">Trò chơi điện tử & bảng điều khiển</a></li>
						<li><a href="#">Phụ kiện</a></li>
						<li><a href="#">Cameras & Photos</a></li>
						<li><a href="#">Phần cứng</a></li>
						<li><a href="#">Máy tính & Laptops</a></li>
					</ul>
				</div>
			</div>

			<div class="col-lg-2">
				<div class="footer_column">
					<div class="footer_title">Chăm sóc khách hàng</div>
					<ul class="footer_list">
						<li><a href="#">Tài khoản của tôi</a></li>
						<li><a href="#">Theo dõi đơn hàng</a></li>
						<li><a href="#">Danh sách mong muốn</a></li>
						<li><a href="#">Dịch vụ khách hàng</a></li>
						<li><a href="#">Trả về / Trao đổi</a></li>
						<li><a href="#">Câu hỏi thường gặp</a></li>
						<li><a href="#">Hỗ trợ sản phẩm</a></li>
					</ul>
				</div>
			</div>

		</div>
	</div>
</footer>

<!-- Copyright -->

<div class="copyright">
	<div class="container">
		<div class="row">
			<div class="col">

				<div
					class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
					<div class="copyright_content">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<div class="logos ml-sm-auto">
						<ul class="logos_list">
							<li><a href="#"><img
									src="${contextPath}/resources/images/logos_1.png" alt=""></a></li>
							<li><a href="#"><img
									src="${contextPath}/resources/images/logos_2.png" alt=""></a></li>
							<li><a href="#"><img
									src="${contextPath}/resources/images/logos_3.png" alt=""></a></li>
							<li><a href="#"><img
									src="${contextPath}/resources/images/logos_4.png" alt=""></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header Main -->

<div class="header_main">
	<div class="container">
		<div class="row">

			<!-- Logo -->
			<div class="col-lg-2 col-sm-3 col-3 order-1">
				<div class="logo_container">
					<div class="logo">
						<a href="#">OneTech</a>
					</div>
				</div>
			</div>
			
			<!-- Search -->
			<div
				class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
				<div class="header_search">
					<div class="header_search_content">
						<div class="header_search_form_container">
							<form action="${contextPath}/search" class="header_search_form clearfix">
								<input type="search" required="required"
									class="header_search_input" name="keyword"
									placeholder="Tìm kiếm sản phẩm...">
								<div class="custom_dropdown">
									<div class="custom_dropdown_list">
										<span class="custom_dropdown_placeholder clc">Tất cả danh mục
										</span> <i class="fas fa-chevron-down"></i>
										<ul class="custom_list clc">
											<li><a class="clc" href="#">Tất cả danh mục</a></li>
											<c:if test="${not empty bigCategories}">
									    		<c:forEach items="${bigCategories}" var="bigCategory">
									    			<li><a class="clc" href="#">${bigCategory.textDescription}</a></li>
									    		</c:forEach>
									    	</c:if>
										</ul>
									</div>
								</div>
								<button type="submit" class="header_search_button trans_300"
									value="Submit">
									<img src="${contextPath}/resources/images/search.png" alt="">
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Wishlist -->
			<div
				class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
				<div
					class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
					<div
						class="wishlist d-flex flex-row align-items-center justify-content-end">
						<div class="wishlist_icon">
							<img src="${contextPath}/resources/images/heart.png" alt="">
						</div>
						<div class="wishlist_content">
							<div class="wishlist_text">
								<a href="#">Wishlist</a>
							</div>
							<div class="wishlist_count">115</div>
						</div>
					</div>

					<!-- Cart -->
					<div class="cart">
						<div
							class="cart_container d-flex flex-row align-items-center justify-content-end">
							<div class="cart_icon">
								<img src="${contextPath}/resources/images/cart.png" alt="">
								<div class="cart_count">
									<span>10</span>
								</div>
							</div>
							<div class="cart_content">
								<div class="cart_text">
									<a href="#">Giỏ hàng</a>
								</div>
								<div class="cart_price"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
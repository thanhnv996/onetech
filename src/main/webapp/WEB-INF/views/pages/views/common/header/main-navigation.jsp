<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main Navigation -->

<nav class="main_nav">
	<div class="container">
		<div class="row">
			<div class="col">

				<div class="main_nav_content d-flex flex-row">

					<!-- Categories Menu -->

					<div class="cat_menu_container">
						<div
							class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
							<div class="cat_burger">
								<span></span><span></span><span></span>
							</div>
							<div class="cat_menu_text">danh mục</div>
						</div>

						<ul class="cat_menu">
							<c:if test="${not empty bigCategories}">
								<c:forEach items="${bigCategories}" var="bigCategory">
									<c:choose>
										<c:when test="${bigCategory.menucategories.size()<1}">
											<li><a href="${contextPath}/category/${bigCategory.id}">${bigCategory.textDescription}<i
													class="fas fa-chevron-right"></i></a></li>
										</c:when>
										<c:otherwise>
											<li class="hassubs"><a
												href="${contextPath}/category/${bigCategory.id}">${bigCategory.textDescription}<i
													class="fas fa-chevron-right"></i></a>
												<ul>
													<c:forEach items="${bigCategory.menucategories}"
														var="menuCategory">
														<li><a
															href="${contextPath}/category/${bigCategory.id}/${menuCategory.id}">${menuCategory.textDescription}</a></li>
													</c:forEach>
												</ul></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:if>
						</ul>
					</div>

					<!-- Main Nav Menu -->

					<div class="main_nav_menu ml-auto">
						<ul class="standard_dropdown main_nav_dropdown">
							<li><a href="${contextPath}/index">Trang chủ<i
									class="fas fa-chevron-down"></i></a></li>
							<!--  
							<li class="hassubs"><a href="#">Siêu khuyến mãi<i
									class="fas fa-chevron-down"></i></a>
								<ul>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a>
										<ul>
											<li><a href="#">Menu Item<i
													class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Menu Item<i
													class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Menu Item<i
													class="fas fa-chevron-down"></i></a></li>
										</ul></li>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a></li>
								</ul></li>
							<li class="hassubs"><a href="#">Thương hiệu nổi bật<i
									class="fas fa-chevron-down"></i></a>
								<ul>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a>
										<ul>
											<li><a href="#">Menu Item<i
													class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Menu Item<i
													class="fas fa-chevron-down"></i></a></li>
											<li><a href="#">Menu Item<i
													class="fas fa-chevron-down"></i></a></li>
										</ul></li>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="#">Menu Item<i
											class="fas fa-chevron-down"></i></a></li>
								</ul></li>
							<li class="hassubs"><a href="#">Trang<i
									class="fas fa-chevron-down"></i></a>
								<ul>
									<li><a href="shop.html">Cửa hàng<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="product.html">Sản phẩm<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="blog.html">Bài đăng<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="blog_single.html">Blog Post<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="regular.html">Bài đăng thường xuyên<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="cart.html">Giỏ hàng<i
											class="fas fa-chevron-down"></i></a></li>
									<li><a href="${contextPath}/contact">Liên hệ<i
											class="fas fa-chevron-down"></i></a></li>
								</ul></li>
							<li><a href="blog.html">Blog<i
									class="fas fa-chevron-down"></i></a></li>
									-->
							<li><a href="${contextPath}/contact">Liên hệ<i
									class="fas fa-chevron-down"></i></a></li>
						</ul>
					</div>

					<!-- Menu Trigger -->

					<div class="menu_trigger_container ml-auto">
						<div
							class="menu_trigger d-flex flex-row align-items-center justify-content-end">
							<div class="menu_burger">
								<div class="menu_trigger_text">menu</div>
								<div class="cat_burger menu_burger_inner">
									<span></span><span></span><span></span>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</nav>
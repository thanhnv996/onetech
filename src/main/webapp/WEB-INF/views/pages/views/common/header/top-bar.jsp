<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Top Bar -->

<div class="top_bar">
	<div class="container">
		<div class="row">
			<div class="col d-flex flex-row">
				<div class="top_bar_contact_item">
					<div class="top_bar_icon">
						<img src="${contextPath}/resources/images/phone.png" alt="">
					</div>
					${phone }
				</div>
				<div class="top_bar_contact_item">
					<div class="top_bar_icon">
						<img src="${contextPath}/resources/images/mail.png" alt="">
					</div>
					<a href="mailto:fastsales@gmail.com">${email }</a>
				</div>
				<div class="top_bar_content ml-auto">
					<div class="top_bar_menu">
						<ul class="standard_dropdown top_bar_dropdown">
							<li><a href="#">Việt Nam<i class="fas fa-chevron-down"></i></a>
								<ul>
									<li><a href="#">English</a></li>
									<li><a href="#">Italian</a></li>
									<li><a href="#">Spanish</a></li>
									<li><a href="#">Japanese</a></li>
								</ul></li>
							<li><a href="#">VNĐ<i class="fas fa-chevron-down"></i></a>
								<ul>
									<li><a href="#">$ US dollar</a></li>
									<li><a href="#">EUR Euro</a></li>
									<li><a href="#">GBP British Pound</a></li>
									<li><a href="#">JPY Japanese Yen</a></li>
								</ul></li>
						</ul>
					</div>
					<div class="top_bar_user">
						<c:choose>
							<c:when test="${empty pageContext.request.userPrincipal.name}">
								<div>
									<a href="${contextPath}/login">Đăng nhập</a>
								</div>
								|
								<div>
									<a href="${contextPath}/registration">Đăng ký</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="user_icon">
									<img src="${contextPath}/resources/images/user.svg" alt="">
								</div>
								${pageContext.request.userPrincipal.name}
								|
								<div style="cursor: pointer;">
									<form id="logoutForm" method="POST"
										action="${contextPath}/logout">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" />
									</form>
									<a onclick="document.forms['logoutForm'].submit()"
										style="color: blue;">Logout</a>
								</div>

							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
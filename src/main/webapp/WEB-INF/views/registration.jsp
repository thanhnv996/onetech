<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Create an product-order</title>

<link
	href="${contextPath}/resources/styles/bootstrap4/bootstrap.min.css"
	rel="stylesheet">
<script src="${contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${contextPath}/resources/styles/bootstrap4/bootstrap.min.js"></script>

<link href="${contextPath}/resources/css/common.css" rel="stylesheet">

<link href="${contextPath}/resources/styles/pages/registration.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>Welcome</h3>
				<p>Đăng ký để sử dụng dịch vụ tốt hơn!</p>
				<input type="submit" name="" value="Login" /><br />
			</div>
			<div class="col-md-9 register-right">
				<div class="tab-content" id="myTabContent">
					<form:form method="POST" modelAttribute="userForm"
						class="form-signin">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<h3 class="register-heading">Đăng ký</h3>
							<div class="row register-form">
								<div class="col-md-6">
									<spring:bind path="username">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="text" path="username" class="form-control"
												placeholder="Tên đăng nhập" autofocus="true"></form:input>
											<form:errors path="username"></form:errors>
										</div>
									</spring:bind>
									<spring:bind path="password">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="password" path="password"
												class="form-control" placeholder="Mật khẩu"></form:input>
											<form:errors path="password"></form:errors>
										</div>
									</spring:bind>

									<spring:bind path="passwordConfirm">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="password" path="passwordConfirm"
												class="form-control" placeholder="Nhập lại mật khẩu"></form:input>
											<form:errors path="passwordConfirm"></form:errors>
										</div>
									</spring:bind>
									<spring:bind path="fullname">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="text" path="fullname" class="form-control"
												placeholder="Họ tên" autofocus="true"></form:input>
											<form:errors path="fullname"></form:errors>
										</div>
									</spring:bind>
								</div>
								<div class="col-md-6">
									<spring:bind path="address">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="text" path="address" class="form-control"
												placeholder="Địa chỉ *" autofocus="true"></form:input>
											<form:errors path="address"></form:errors>
										</div>
									</spring:bind>

									<spring:bind path="email">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="email" path="email" class="form-control"
												placeholder="Email *" autofocus="true"></form:input>
											<form:errors path="email"></form:errors>
										</div>
									</spring:bind>

									<spring:bind path="phone">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="text" path="phone" class="form-control"
												placeholder="Phone *" autofocus="true"></form:input>
											<form:errors path="phone"></form:errors>
										</div>
									</spring:bind>

									<div class="form-group">
										<div class="maxl">
											<label class="radio inline"> <input type="radio"
												name="gender" value="male" checked> <span>
													Nam </span>
											</label> <label class="radio inline"> <input type="radio"
												name="gender" value="female"> <span>Nữ </span>
											</label>
										</div>
									</div>
									<input type="submit" class="btnRegister" value="Đăng ký" />
								</div>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>

	</div>
	<!--
	<div class="container">

		<form:form method="POST" modelAttribute="userForm" class="form-signin">
			<h2 class="form-signin-heading">Tạo tài khoản</h2>
			<spring:bind path="username">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="text" path="username" class="form-control"
						placeholder="Tên đăng nhập" autofocus="true"></form:input>
					<form:errors path="username"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="password">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="password" path="password" class="form-control"
						placeholder="Mật khẩu"></form:input>
					<form:errors path="password"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="passwordConfirm">
				<div class="form-group ${status.error ? 'has-error' : ''}">
					<form:input type="password" path="passwordConfirm"
						class="form-control" placeholder="Nhập lại mật khẩu"></form:input>
					<form:errors path="passwordConfirm"></form:errors>
				</div>
			</spring:bind>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Đăng
				ký</button>
		</form:form>

	</div>
	<!-- /container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>

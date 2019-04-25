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

<title>Đăng nhập</title>

<link
	href="${contextPath}/resources/styles/bootstrap4/bootstrap.min.css"
	rel="stylesheet">
<script src="${contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script
	src="${contextPath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
<link href="${contextPath}/resources/styles/pages/login.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="login-container">
		<div class="login-form-1">
			<h3>Đăng nhập</h3>
			<form method="POST" action="${contextPath}/login" class="form-signin">
				<div class="form-group ${error != null ? 'has-error' : ''}">
					<span>${message}</span> <input name="username" type="text"
						class="form-control" placeholder="Username" />
				</div>
				<div class="form-group">
					<input name="password" type="password" class="form-control"
						placeholder="Password" />
				</div>
				<div class="form-group">
					<span>${error}</span> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
				</div>
				<div class="form-group" style="width: 100%; text-align: center;">
					<input type="submit" class="btnSubmit" value="Đăng nhập"
						style="display: inline-block;" />
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-md-6">
							<a href="#" class="ForgetPwd">Quên mật khẩu?</a>
						</div>
						<div class="col-md-6">
							<a href="${contextPath}/registration">Tạo tài khoản mới.</a>
						</div>
					</div>

				</div>
			</form>

		</div>
	</div>
	<!-- /container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>

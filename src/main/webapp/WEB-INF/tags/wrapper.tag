<%@tag description="Wrapper Tag" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta contentType="text/html; charset=UTF-8"">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>TECH SHOP</title>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="${contextPath}/resources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/plugins/slick-1.8.0/slick.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/common.css">
<link
	href="${contextPath}/resources/open-iconic/font/css/open-iconic.css"
	rel="stylesheet">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
</head>

<body style="zoom: 80%;">

	<div class="super_container">

		<jsp:include page="../views/common/header/header.jsp" />
		<jsp:doBody />
		<jsp:include page="../views/common/footer/footer.jsp" />

	</div>

	<script src="${contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script src="${contextPath}/resources/styles/bootstrap4/popper.js"></script>
	<script
		src="${contextPath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/plugins/greensock/TweenMax.min.js"></script>
	<script
		src="${contextPath}/resources/plugins/greensock/TimelineMax.min.js"></script>
	<script
		src="${contextPath}/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script
		src="${contextPath}/resources/plugins/greensock/animation.gsap.min.js"></script>
	<script
		src="${contextPath}/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script
		src="${contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="${contextPath}/resources/plugins/slick-1.8.0/slick.js"></script>
	<script src="${contextPath}/resources/plugins/easing/easing.js"></script>
	<script src="${contextPath}/resources/js/custom.js"></script>
	<script src="${contextPath}/resources/js/product_custom.js"></script>
	<script
		src="${contextPath}/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
	<script
		src="${contextPath}/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
	<script
		src="${contextPath}/resources/plugins/parallax-js-master/parallax.min.js"></script>
	<script src="${contextPath}/resources/js/shop_custom.js"></script>
	<script src="${contextPath}/resources/js/common.js"></script>
	<script src="${contextPath}/resources/js/jquery.treemenu.js"></script>
	<script src="${contextPath}/resources/js/init.js"></script>
</body>
</html>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/responsive.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/blog_single_responsive.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/cart_responsive.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/contact_responsive.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/product_responsive.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/regular_responsive.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/styles/shop_responsive.css">
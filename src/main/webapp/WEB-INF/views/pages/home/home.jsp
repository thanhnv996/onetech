<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:wrapper>
	<%@ include file="banner.jsp"%>
	<%@ include file="characteristics.jsp"%>
	<%@ include file="deals_featured.jsp"%>
	<%@ include file="popular_categories.jsp"%>
	<!--  %@ include file="banner_2.jsp" %> -->
	<%@ include file="new_arrivals.jsp"%>
	<%@ include file="best_sellers.jsp"%>
	<%@ include file="adverts.jsp"%>
	<!-- %@ include file="trends.jsp" %> -->
	<%@ include file="reviews.jsp"%>
	<%@ include file="../views/common/viewed.jsp"%>
</t:wrapper>
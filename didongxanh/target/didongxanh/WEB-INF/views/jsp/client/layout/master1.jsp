<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->





<link href="<c:url value="/resources/Client/Css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/Client/Css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Client/Css/elegant-icons.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Client/Css/nice-select.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Client/Css/jquery-ui.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/Client/Css/owl.carousel.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Client/Css/slicknav.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/Client/Css/style.css" />"
	rel="stylesheet">
</head>
<body>

	<!-- Header -->
	<tiles:insertAttribute name="header"></tiles:insertAttribute>

	<!-- Hero -->
	<tiles:insertAttribute name="hero"></tiles:insertAttribute>


	<!-- body -->
	<tiles:insertAttribute name="body"></tiles:insertAttribute>

	<!-- baner -->
	<tiles:insertAttribute name="baner"></tiles:insertAttribute>

	<!-- footer -->
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>

	<script
		src="<c:url value="/resources/Client/JS/jquery-3.2.1.min.js" />"></script>
	<script
		src="<c:url value="/resources/Client/JS/jquery.nice-select.min.js" />"></script>
	<script src="<c:url value="/resources/Client/JS/jquery-ui.min.js" />"></script>
	<script src="<c:url value="/resources/Client/JS/jquery.slicknav.js" />"></script>
	<script src="<c:url value="/resources/Client/JS/mixitup.min.js" />"></script>
	<script src="<c:url value="/resources/Client/JS/jquery.slicknav.js" />"></script>
	<script src="<c:url value="/resources/Client/JS/mixitup.min.js" />"></script>
	<script
		src="<c:url value="/resources/Client/JS/owl.carousel.min.js" />"></script>
	<script src="<c:url value="/resources/Client/JS/main.js" />"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
		<script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js">
	</script>

</body>
</html>
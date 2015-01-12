<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="jpetstore" tagdir="/WEB-INF/tags"%>

<%@ attribute name="title" fragment="false" %>
<%@ attribute name="lessstylesheets" fragment="true" %>
<%@ attribute name="headscripts" fragment="true" %>
<%@ attribute name="scripts" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<!-- http://stackoverflow.com/questions/6771258/whats-the-difference-if-meta-http-equiv-x-ua-compatible-content-ie-edge-e -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>${not empty title ? title : "JPS 6.2"}</title>
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<!-- 	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.1/superhero/bootstrap.min.css" /> -->

	<!-- GSD -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/get-shit-done.css" />
	
	<!-- Font Awesome -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Grand+Hotel">

	<jsp:invoke fragment="lessstylesheets" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.1.2/less.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<!-- client's end of head scripts -->
	<jsp:invoke fragment="headscripts" />
</head>

<body>
	<jsp:doBody />
</body>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<!-- GSD -->
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui-1.10.4.custom.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/gsdk-checkbox.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/gsdk-radio.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/gsdk-bootstrapswitch.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/get-shit-done.js"></script>

<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>

<!-- client's end of page script -->
<jsp:invoke fragment="scripts" />
</html>

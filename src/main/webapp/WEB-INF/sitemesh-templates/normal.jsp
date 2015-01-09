<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<!-- sitemesh normale template -->
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<sitemesh:write property="metadata" />

	<title><sitemesh:write property="title" /></title>
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<!-- 	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.1/superhero/bootstrap.min.css" /> -->

	<!-- GSD -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/get-shit-done.css" />
	
	<!-- Font Awesome -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Grand+Hotel">

	<sitemesh:write property="lessStylesheets" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.1.2/less.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<!-- client's end of head scripts -->
	<sitemesh:write property="endOfHeaderScripts" />
</head>

<body>
	<div id="stf-viewport">
		<div id="stf-north">
			<div id="north" class="container">
				<sitemesh:write property="page.heading" />
			</div>
		</div>
		
		<div id="stf-center">
			<div id="center" class="container">
				<sitemesh:write property='body' />
			</div>
		</div>
		
		<div id="stf-south">
			<div id="south" class="container">
				<div style="color:#666">Assembled with
					<a style="color:#666" href="http://wiki.sitemesh.org/wiki/display/sitemesh3/Getting+Started+with+SiteMesh+3" target="_BLANK">Sitemesh-3</a>.
				</div>
			</div>
		</div>
	</div>
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
<sitemesh:write property="endOfFileScripts" />
</html>

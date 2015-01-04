<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	
	<title><sitemesh:write property="title" /></title>
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	
	<sitemesh:write property="head" />

	<!-- begin stickyfooter -->
	<link data-modify-vars='{ "@northPadding": "0", "@southHeight": "15px" }' rel="stylesheet/less" href="${pageContext.request.contextPath}/css/stickyfooter.less" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.1.2/less.min.js"></script>
	<!-- end stickyfooter -->
</head>

<body>
	<div id="stf-viewport">
		<div id="stf-north">
			<div id="north" class="container">
				<h1 class="title">
					<sitemesh:write property="title" />
				</h1>
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
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<!-- sitemesh light template -->
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
	<sitemesh:write property='body' />
</body>
</html>

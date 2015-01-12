<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>

<stripes:layout-definition>
<!DOCTYPE html>
<html>
<!-- light template -->
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>${title}</title>
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	
	<!-- stylesheet -->
	<stripes:layout-component name="stylesheets" />
	
	<!-- less stylesheet -->
	<stripes:layout-component name="less_stylesheets" />
	<link data-modify-vars='{ "@northPadding": "0", "@southHeight": "15px" }' rel="stylesheet/less" href="${pageContext.request.contextPath}/css/stickyfooter.less" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.1.2/less.min.js"></script>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<!-- client's end of head scripts -->
	<stripes:layout-component name="end_of_header_scripts" />
</head>

<body>
	<stripes:layout-component name="content" />
</body>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<!-- client's end of body script -->
<stripes:layout-component name="end_of_body_scripts" />
</html>
</stripes:layout-definition>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>

<stripes:layout-definition>
<!DOCTYPE html>
<html>
<!-- error template -->
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<title>${title}</title>
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	
	<stripes:layout-component name="head" />
</head>

<body>
	<stripes:layout-component name="content" />
</body>

<!-- end of body script -->
<stripes:layout-component name="end_of_body_scripts" />
</html>
</stripes:layout-definition>

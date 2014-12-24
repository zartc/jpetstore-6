<%@ tag pageEncoding="UTF-8" body-content="scriptless" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>

<%@ attribute name="title" fragment="false" %>
<%@ attribute name="navbartop" fragment="true" %>
<%@ attribute name="pageheader" fragment="true" %>
<%@ attribute name="pagefooter" fragment="true" %>
<%@ attribute name="navbarbottom" fragment="true" %>

<%-- JSP-TEMPLATE --%>
<%-- see: http://wiki4.caucho.com/Java_EE_Servlet_tutorial_:_Using_JSPs_to_create_header,_footer_area,_formatting,_and_basic_CSS_for_bookstore --%>
<%-- see: http://docs.oracle.com/cd/E19316-01/819-3669/bnaoh/index.html --%>
<%-- see: http://stackoverflow.com/questions/10529963/what-is-the-best-way-to-create-jsp-layout-template --%>
<%-- see: http://stackoverflow.com/questions/1296235/jsp-tricks-to-make-templating-easier --%>
<%-- see: http://stackoverflow.com/questions/490390/jsp-template-inheritance --%>
<%-- see: http://www.javaworld.com/article/2076174/java-web-development/jsp-templates.html --%>
<%-- see:  --%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>${title}</title>
	
	<!-- begin stickyfooter -->
	<link rel="stylesheet/less" href="${pageContext.request.contextPath}/css/stickyfooter.less" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.1.2/less.min.js"></script>
	<!-- end stickyfooter -->
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<!-- 	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.1/superhero/bootstrap.min.css" /> -->
<!-- 	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" /> -->
</head>

<body>
<jsp:invoke fragment="navbartop" />

<div id="stf-viewport">
	<div id="stf-header">
		<div id="pageheader" class="container">
			<jsp:invoke fragment="pageheader" />
		</div>
	</div>
	
	<div id="stf-body">
		<div id="pagebody" class="container">
			<jsp:doBody />
		</div>
	</div>
	
	<div id="stf-footer">
		<div id="pagefooter" class="container">
			<jsp:invoke fragment="pagefooter" />
			<c:if test="${empty pagefooter}">
				<my:defaultfooter />
			</c:if>
		</div>
	</div>
</div>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<script>
	function toggleStickyfooterDebugCSS() {
		var name = "stickyfooter-debug";
		var element = document.getElementById(name);
		if(element) {
			element.parentNode.removeChild(element);
		}
		else {
			var cssNode = document.createElement("link");
			cssNode.id = name;
			cssNode.href = "${pageContext.request.contextPath}/css/" + name + ".css";
			cssNode.type = "text/css";
			cssNode.rel = "stylesheet";
			cssNode.media = "screen";
			document.getElementsByTagName("head")[0].appendChild(cssNode);
		}
	}
	
	$(function() {
		$('#toggleStickyfooterDebugCSS').click(toggleStickyfooterDebugCSS);

		if(false)  {
			$("#toggleStickyfooterDebugCSS").click();
		}
	})
</script>

</body>
</html>

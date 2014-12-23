<%@ tag description="generic page template" pageEncoding="UTF-8" body-content="scriptless"%>

<%@ attribute name="title" fragment="false"%>
<%@ attribute name="header" fragment="true"%>
<%@ attribute name="footer" fragment="true"%>

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

	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<!-- 	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.3.1/superhero/bootstrap.min.css" /> -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
	
	<link rel="stylesheet/less" type="text/css" href="${pageContext.request.contextPath}/css/stickyfooter.less" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.1.2/less.min.js"></script>
</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}">${pageContext.request.contextPath}</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="implementation-a.html">Menu 1</a></li>
				<li class="normal"><a href="implementation-b.html">Menu 2</a></li>
				<li class="normal"><a href="implementation-c.html">Menu 3</a></li>
				<li class="normal"><a href="implementation-d.html">Menu 4</a></li>
				<li class="divider-vertical"></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Debug<b class="caret"></b></a>
					<ul class="dropdown-menu dropdown-menu-form" role="menu">
						<li><label class="checkbox"><input id="toggleStickyfooterDebugCSS" type="checkbox" />Display debug css</label></li>
						<li><label class="checkbox"><input id="displayCodeStruct" type="checkbox" />Display alternate content</label></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>

<div id="stf-wrapper">
	<div id="stf-header">
		<div id="pageheader" class="container">
			<jsp:invoke fragment="header" />
		</div>
	</div>
	
	<div id="stf-body">
		<div id="pagebody" class="container">
			<jsp:doBody />
		</div>
	</div>
	
	<div id="stf-footer">
		<div id="pagefooter" class="container">
			<jsp:invoke fragment="footer" />
		</div>
	</div>
</div>
</body>

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
</html>

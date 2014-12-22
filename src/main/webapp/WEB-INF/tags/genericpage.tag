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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>${title}</title>
</head>
<body>
	<div id="pageheader">
		<jsp:invoke fragment="header" />
	</div>
	<div id="pagebody">
		<jsp:doBody />
	</div>
	<div id="pagefooter">
		<jsp:invoke fragment="footer" />
	</div>
</body>
</html>

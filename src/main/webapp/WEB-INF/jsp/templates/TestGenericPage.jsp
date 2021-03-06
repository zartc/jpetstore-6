<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>

<%-- title is passed as a string attribute of the my:genericpage tag
	header and footer are passed as html fragments inside the body of the tag
	the page body is passed inside the jsp:body tag --%>
	
<my:genericpage title="the title">
	<jsp:attribute name="header">
		<h1>I'm the HEADER of the page</h1>
	</jsp:attribute>
	<jsp:attribute name="footer">
		<p>I'm the FOOTER of the page</p>
	</jsp:attribute>
	<jsp:body>
		<p>Hi I'm the CONTENT of the page</p>
		<p>context path = ${pageContext.request.contextPath}</p>
	</jsp:body>
</my:genericpage>

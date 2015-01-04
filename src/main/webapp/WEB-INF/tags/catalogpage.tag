<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>
<%@ taglib prefix="jpetstore" tagdir="/WEB-INF/tags" %>

<%@ attribute name="title" fragment="false" %>

<jpetstore:basepageWithNavbarAndStickyFooter title="${title}">
	<jsp:body>
		<div id="catalog">
			<jpetstore:catalog />
		</div>
		<div id="content">
			<jsp:doBody />
		</div>
	</jsp:body>
</jpetstore:basepageWithNavbarAndStickyFooter>

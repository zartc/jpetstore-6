<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>
<%@ taglib prefix="jpetstore" tagdir="/WEB-INF/tags"%>

<jpetstore:basepageWithNavbarAndStickyFooter title="test JPetStore page title">
	<jsp:attribute name="north">
		<p>This is the NORTH in the stickyfooter squel</p>
	</jsp:attribute>
	<jsp:body>
		<p>This is the BODY in the stickyfooter squel</p>
	</jsp:body>
</jpetstore:basepageWithNavbarAndStickyFooter>

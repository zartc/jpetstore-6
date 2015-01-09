<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="jpetstore" tagdir="/WEB-INF/tags"%>

<jpetstore:basepageWithNavbarAndStickyFooter title="test JPetStore page title">
	<jsp:attribute name="north">
		<p>This is the NORTH</p>
	</jsp:attribute>
	<jsp:body>
		<p>This is the BODY</p>
	</jsp:body>
</jpetstore:basepageWithNavbarAndStickyFooter>

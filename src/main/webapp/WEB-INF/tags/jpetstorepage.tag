<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

	
<my:genericpage title="JPetStore-6.2">

	<jsp:attribute name="navbartop">
		<my:jpetstorenavbartop />
	</jsp:attribute>

	<jsp:body>
		<div id="Content">
			<stripes:messages />
			<jsp:doBody />
		</div>
	</jsp:body>

</my:genericpage>

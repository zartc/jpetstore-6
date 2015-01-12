<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jpetstore" tagdir="/WEB-INF/tags" %>

<%@ attribute name="north" fragment="true" %>
<%@ attribute name="south" fragment="true" %>

<div id="stf-viewport">
	<div id="stf-north">
		<div id="north" class="container">
			<jsp:invoke fragment="north" />
		</div>
	</div>
	
	<div id="stf-center">
		<div id="center" class="container">
			<jsp:doBody />
		</div>
	</div>
	
	<div id="stf-south">
		<div id="south" class="container">
			<jsp:invoke var="south" fragment="south"/>
			<c:choose>
				<c:when test="${not empty south}">
					<jsp:invoke fragment="south" />
				</c:when>
				<c:otherwise>
					<jpetstore:defaultfooter />
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>

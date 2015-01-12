<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>
<%@ taglib prefix="jpetstore" tagdir="/WEB-INF/tags" %>

<%@ attribute name="title" fragment="false" %>
<%@ attribute name="north" fragment="true" %>
<%@ attribute name="south" fragment="true" %>
	
<jpetstore:basepage title="${title}">
	<jsp:attribute name="lessstylesheets">
		<!-- begin stickyfooter -->
		<link rel="stylesheet/less" href="${pageContext.request.contextPath}/css/stickyfooter.less" />
		<!-- end stickyfooter -->
	</jsp:attribute>
	
	<jsp:attribute name="scripts">
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
		</script>
	</jsp:attribute>

	<jsp:body>
		<jpetstore:navbartop />
		<jpetstore:stickyfooterSquel>
			<jsp:attribute name="north"><jsp:invoke fragment="north" /></jsp:attribute>
			<jsp:attribute name="south"><jsp:invoke fragment="south" /></jsp:attribute>
			<jsp:body><jsp:doBody /></jsp:body>
		</jpetstore:stickyfooterSquel>
	</jsp:body>
	
</jpetstore:basepage>

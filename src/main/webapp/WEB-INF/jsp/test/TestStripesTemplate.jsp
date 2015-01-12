<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>

<stripes:layout-render name="/WEB-INF/templates/northsouth.jsp" title="test stripes templates">
	<!-- the content overriden -->
	<stripes:layout-component name="north">
		<p>This is leaf page NORTH</p>
	</stripes:layout-component>
	<stripes:layout-component name="center">
		<p>This is leaf page CONTENT</p>
	</stripes:layout-component>
	<stripes:layout-component name="south">
		<p>This is leaf page SOUTH</p>
	</stripes:layout-component>
</stripes:layout-render> 

<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>

<stripes:layout-definition>
	<div id="stf-viewport">
		<div id="stf-north">
			<div id="north" class="container">
				<stripes:layout-component name="north" />
			</div>
		</div>
		<div id="stf-center">
			<div id="center" class="container">
				<stripes:layout-component name="center" />
			</div>
		</div>
		<div id="stf-south">
			<div id="south" class="container">
				<stripes:layout-component name="south" />
			</div>
		</div>
	</div>
</stripes:layout-definition>

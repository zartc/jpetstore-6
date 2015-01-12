<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>

<stripes:layout-definition>
	<stripes:layout-render name="/WEB-INF/templates/normal.jsp" title="test normal">
		<stripes:layout-component name="less_stylesheets">
			<link rel="stylesheet/less" href="${pageContext.request.contextPath}/css/stickyfooter.less" />
			<link rel="stylesheet/less" href="${pageContext.request.contextPath}/css/defaultfooter.less" />
		</stripes:layout-component>
		<stripes:layout-component name="end_of_header_scripts">
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
		</stripes:layout-component>
		<stripes:layout-component name="content">
			<div id="stf-viewport">
				<div id="stf-north">
					<div id="north" class="container">
						<stripes:layout-component name="north">
							<p>default North</p>
						</stripes:layout-component>
					</div>
				</div>
				<div id="stf-center">
					<div id="center" class="container">
						<stripes:layout-component name="center">
							<p>default Center</p>
						</stripes:layout-component>
					</div>
				</div>
				<div id="stf-south">
					<div id="south" class="container">
						<stripes:layout-component name="south">
							<p>default South</p>
						</stripes:layout-component>
					</div>
				</div>
			</div>
		</stripes:layout-component>
	</stripes:layout-render> 
</stripes:layout-definition>

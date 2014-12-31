<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}">
				JPetStore 6.2
			</a>
		</div>
		
		<div class="collapse navbar-collapse" id="navbar-1">
			<ul class="nav navbar-nav">
				<c:forTokens items="DOGS CATS BIRDS FISH REPTILES" delims=" " var="item">
					<li class="normal">
						<stripes:link beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean" event="viewCategory">
							<stripes:param name="categoryId" value="${item}" />
							${fn:toUpperCase(fn:toUpperCase(fn:substring(item, 0, 1)))}${fn:toLowerCase(fn:substring(item, 1, -1))}
						</stripes:link>
					</li>
				</c:forTokens>
				
				<li class="normal">
					<stripes:link beanclass="org.mybatis.jpetstore.web.actions.CartActionBean" event="viewCart">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
					</stripes:link>
				</li>
				
				<li class="divider-vertical"></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<li class="normal">
					<c:if test="${empty sessionScope.accountBean}">
						<stripes:link beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean" event="signonForm">
							<span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
					    </stripes:link>
					</c:if>
					<c:if test="${not empty sessionScope.accountBean}">
						<stripes:link beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean" event="signoff">
							<span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
					    </stripes:link>
					</c:if>
				</li>
				
				<li class="normal">
					<a href="${pageContext.request.contextPath}/help.html">
						<span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>
					</a>
				</li>
				
<!-- 				<li class="dropdown"> -->
<!-- 					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Debug<b class="caret"></b></a> -->
<!-- 					<ul class="dropdown-menu dropdown-menu-form" role="menu"> -->
<!-- 						<li><label class="checkbox"><input id="toggleStickyfooterDebugCSS" type="checkbox" />Display debug css</label></li> -->
<!-- 						<li><label class="checkbox"><input id="displayCodeStruct" type="checkbox" />Display alternate content</label></li> -->
<!-- 					</ul> -->
<!-- 				</li> -->
			</ul>
		</div>
	</div>
</nav>

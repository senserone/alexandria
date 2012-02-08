
<%@ page import="com.rnp.common.Building" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'building.label', default: 'Building')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-building" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-building" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list building">
			
				<g:if test="${buildingInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="building.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${buildingInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="building.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${buildingInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.unitAmount}">
				<li class="fieldcontain">
					<span id="unitAmount-label" class="property-label"><g:message code="building.unitAmount.label" default="Unit Amount" /></span>
					
						<span class="property-value" aria-labelledby="unitAmount-label"><g:fieldValue bean="${buildingInstance}" field="unitAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="building.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${buildingInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="building.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${buildingInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.bedroomAmount}">
				<li class="fieldcontain">
					<span id="bedroomAmount-label" class="property-label"><g:message code="building.bedroomAmount.label" default="Bedroom Amount" /></span>
					
						<span class="property-value" aria-labelledby="bedroomAmount-label"><g:fieldValue bean="${buildingInstance}" field="bedroomAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.bookingPayment}">
				<li class="fieldcontain">
					<span id="bookingPayment-label" class="property-label"><g:message code="building.bookingPayment.label" default="Booking Payment" /></span>
					
						<span class="property-value" aria-labelledby="bookingPayment-label"><g:fieldValue bean="${buildingInstance}" field="bookingPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.contractPayment}">
				<li class="fieldcontain">
					<span id="contractPayment-label" class="property-label"><g:message code="building.contractPayment.label" default="Contract Payment" /></span>
					
						<span class="property-value" aria-labelledby="contractPayment-label"><g:fieldValue bean="${buildingInstance}" field="contractPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.deep}">
				<li class="fieldcontain">
					<span id="deep-label" class="property-label"><g:message code="building.deep.label" default="Deep" /></span>
					
						<span class="property-value" aria-labelledby="deep-label"><g:fieldValue bean="${buildingInstance}" field="deep"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.downMonth}">
				<li class="fieldcontain">
					<span id="downMonth-label" class="property-label"><g:message code="building.downMonth.label" default="Down Month" /></span>
					
						<span class="property-value" aria-labelledby="downMonth-label"><g:fieldValue bean="${buildingInstance}" field="downMonth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.downPayment}">
				<li class="fieldcontain">
					<span id="downPayment-label" class="property-label"><g:message code="building.downPayment.label" default="Down Payment" /></span>
					
						<span class="property-value" aria-labelledby="downPayment-label"><g:fieldValue bean="${buildingInstance}" field="downPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="building.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${buildingInstance?.project?.id}">${buildingInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.restroomAmount}">
				<li class="fieldcontain">
					<span id="restroomAmount-label" class="property-label"><g:message code="building.restroomAmount.label" default="Restroom Amount" /></span>
					
						<span class="property-value" aria-labelledby="restroomAmount-label"><g:fieldValue bean="${buildingInstance}" field="restroomAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.usingArea}">
				<li class="fieldcontain">
					<span id="usingArea-label" class="property-label"><g:message code="building.usingArea.label" default="Using Area" /></span>
					
						<span class="property-value" aria-labelledby="usingArea-label"><g:fieldValue bean="${buildingInstance}" field="usingArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${buildingInstance?.width}">
				<li class="fieldcontain">
					<span id="width-label" class="property-label"><g:message code="building.width.label" default="Width" /></span>
					
						<span class="property-value" aria-labelledby="width-label"><g:fieldValue bean="${buildingInstance}" field="width"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${buildingInstance?.id}" />
					<g:link class="edit" action="edit" id="${buildingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

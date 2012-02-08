
<%@ page import="com.rnp.common.Project" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="project.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${projectInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="project.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${projectInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="project.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${projectInstance}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.promotion}">
				<li class="fieldcontain">
					<span id="promotion-label" class="property-label"><g:message code="project.promotion.label" default="Promotion" /></span>
					
						<span class="property-value" aria-labelledby="promotion-label"><g:fieldValue bean="${projectInstance}" field="promotion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="project.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:link controller="brand" action="show" id="${projectInstance?.brand?.id}">${projectInstance?.brand?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.buildings}">
				<li class="fieldcontain">
					<span id="buildings-label" class="property-label"><g:message code="project.buildings.label" default="Buildings" /></span>
					
						<g:each in="${projectInstance.buildings}" var="b">
						<span class="property-value" aria-labelledby="buildings-label"><g:link controller="building" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="project.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${projectInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.images}">
				<li class="fieldcontain">
					<span id="images-label" class="property-label"><g:message code="project.images.label" default="Images" /></span>
					
						<g:each in="${projectInstance.images}" var="i">
						<span class="property-value" aria-labelledby="images-label"><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.mapAddressURL}">
				<li class="fieldcontain">
					<span id="mapAddressURL-label" class="property-label"><g:message code="project.mapAddressURL.label" default="Map Address URL" /></span>
					
						<span class="property-value" aria-labelledby="mapAddressURL-label"><g:fieldValue bean="${projectInstance}" field="mapAddressURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.zone}">
				<li class="fieldcontain">
					<span id="zone-label" class="property-label"><g:message code="project.zone.label" default="Zone" /></span>
					
						<span class="property-value" aria-labelledby="zone-label"><g:link controller="zone" action="show" id="${projectInstance?.zone?.id}">${projectInstance?.zone?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projectInstance?.id}" />
					<g:link class="edit" action="edit" id="${projectInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.rnp.common.Brand" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-brand" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-brand" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list brand">
			
				<g:if test="${brandInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="brand.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${brandInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brandInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="brand.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${brandInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brandInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="brand.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${brandInstance}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brandInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="brand.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${brandInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brandInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="brand.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:fieldValue bean="${brandInstance}" field="owner"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${brandInstance?.projects}">
				<li class="fieldcontain">
					<span id="projects-label" class="property-label"><g:message code="brand.projects.label" default="Projects" /></span>
					
						<g:each in="${brandInstance.projects}" var="p">
						<span class="property-value" aria-labelledby="projects-label"><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${brandInstance?.id}" />
					<g:link class="edit" action="edit" id="${brandInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

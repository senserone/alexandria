
<%@ page import="com.rnp.common.Project" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'project.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'project.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="contact" title="${message(code: 'project.contact.label', default: 'Contact')}" />
					
						<g:sortableColumn property="promotion" title="${message(code: 'project.promotion.label', default: 'Promotion')}" />
					
						<th><g:message code="project.brand.label" default="Brand" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'project.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "contact")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "promotion")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "brand")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

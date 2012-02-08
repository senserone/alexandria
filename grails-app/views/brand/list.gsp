
<%@ page import="com.rnp.common.Brand" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'brand.label', default: 'Brand')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-brand" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-brand" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'brand.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'brand.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="contact" title="${message(code: 'brand.contact.label', default: 'Contact')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'brand.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="owner" title="${message(code: 'brand.owner.label', default: 'Owner')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${brandInstanceList}" status="i" var="brandInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${brandInstance.id}">${fieldValue(bean: brandInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: brandInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: brandInstance, field: "contact")}</td>
					
						<td>${fieldValue(bean: brandInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: brandInstance, field: "owner")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${brandInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

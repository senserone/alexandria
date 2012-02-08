
<%@ page import="com.rnp.common.Building" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'building.label', default: 'Building')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-building" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-building" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'building.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'building.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="unitAmount" title="${message(code: 'building.unitAmount.label', default: 'Unit Amount')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'building.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'building.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="bedroomAmount" title="${message(code: 'building.bedroomAmount.label', default: 'Bedroom Amount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${buildingInstanceList}" status="i" var="buildingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${buildingInstance.id}">${fieldValue(bean: buildingInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: buildingInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: buildingInstance, field: "unitAmount")}</td>
					
						<td>${fieldValue(bean: buildingInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: buildingInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: buildingInstance, field: "bedroomAmount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${buildingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

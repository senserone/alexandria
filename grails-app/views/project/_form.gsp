<%@ page import="com.rnp.common.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="project.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${projectInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="project.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="1500" required="" value="${projectInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'contact', 'error')} required">
	<label for="contact">
		<g:message code="project.contact.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="contact" cols="40" rows="5" maxlength="1500" required="" value="${projectInstance?.contact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'promotion', 'error')} ">
	<label for="promotion">
		<g:message code="project.promotion.label" default="Promotion" />
		
	</label>
	<g:textArea name="promotion" cols="40" rows="5" maxlength="1500" value="${projectInstance?.promotion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="project.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="brand" name="brand.id" from="${com.rnp.common.Brand.list()}" optionKey="id" required="" value="${projectInstance?.brand?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'buildings', 'error')} ">
	<label for="buildings">
		<g:message code="project.buildings.label" default="Buildings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.buildings?}" var="b">
    <li><g:link controller="building" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="building" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'building.label', default: 'Building')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${projectInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="project.images.label" default="Images" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.images?}" var="i">
    <li><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="image" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'image.label', default: 'Image')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'mapAddressURL', 'error')} ">
	<label for="mapAddressURL">
		<g:message code="project.mapAddressURL.label" default="Map Address URL" />
		
	</label>
	<g:textField name="mapAddressURL" value="${projectInstance?.mapAddressURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'zone', 'error')} required">
	<label for="zone">
		<g:message code="project.zone.label" default="Zone" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="zone" name="zone.id" from="${com.rnp.common.Zone.list()}" optionKey="id" required="" value="${projectInstance?.zone?.id}" class="many-to-one"/>
</div>


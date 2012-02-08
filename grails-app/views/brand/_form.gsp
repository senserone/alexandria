<%@ page import="com.rnp.common.Brand" %>



<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="brand.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${brandInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="brand.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1500" value="${brandInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'contact', 'error')} ">
	<label for="contact">
		<g:message code="brand.contact.label" default="Contact" />
		
	</label>
	<g:textArea name="contact" cols="40" rows="5" maxlength="1500" value="${brandInstance?.contact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="brand.address.label" default="Address" />
		
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="1500" value="${brandInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'owner', 'error')} ">
	<label for="owner">
		<g:message code="brand.owner.label" default="Owner" />
		
	</label>
	<g:textField name="owner" value="${brandInstance?.owner}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="brand.projects.label" default="Projects" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${brandInstance?.projects?}" var="p">
    <li><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="project" action="create" params="['brand.id': brandInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
</li>
</ul>

</div>


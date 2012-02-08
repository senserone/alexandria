<%@ page import="com.rnp.common.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'imageUrl', 'error')} ">
	<label for="imageUrl">
		<g:message code="image.imageUrl.label" default="Image Url" />
		
	</label>
	<g:textField name="imageUrl" value="${imageInstance?.imageUrl}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="image.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.rnp.common.Project.list()}" optionKey="id" required="" value="${imageInstance?.project?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="image.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${imageInstance?.title}"/>
</div>


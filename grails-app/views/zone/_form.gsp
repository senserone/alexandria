<%@ page import="com.rnp.common.Zone" %>



<div class="fieldcontain ${hasErrors(bean: zoneInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="zone.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${zoneInstance?.title}"/>
</div>


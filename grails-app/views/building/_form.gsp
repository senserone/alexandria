<%@ page import="com.rnp.common.Building" %>



<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="building.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${buildingInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="building.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1500" value="${buildingInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'unitAmount', 'error')} required">
	<label for="unitAmount">
		<g:message code="building.unitAmount.label" default="Unit Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="unitAmount" required="" value="${fieldValue(bean: buildingInstance, field: 'unitAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="building.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="area" required="" value="${fieldValue(bean: buildingInstance, field: 'area')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="building.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" required="" value="${fieldValue(bean: buildingInstance, field: 'price')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'bedroomAmount', 'error')} required">
	<label for="bedroomAmount">
		<g:message code="building.bedroomAmount.label" default="Bedroom Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="bedroomAmount" required="" value="${fieldValue(bean: buildingInstance, field: 'bedroomAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'bookingPayment', 'error')} required">
	<label for="bookingPayment">
		<g:message code="building.bookingPayment.label" default="Booking Payment" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="bookingPayment" required="" value="${fieldValue(bean: buildingInstance, field: 'bookingPayment')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'contractPayment', 'error')} required">
	<label for="contractPayment">
		<g:message code="building.contractPayment.label" default="Contract Payment" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="contractPayment" required="" value="${fieldValue(bean: buildingInstance, field: 'contractPayment')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'deep', 'error')} required">
	<label for="deep">
		<g:message code="building.deep.label" default="Deep" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="deep" required="" value="${fieldValue(bean: buildingInstance, field: 'deep')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'downMonth', 'error')} required">
	<label for="downMonth">
		<g:message code="building.downMonth.label" default="Down Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="downMonth" required="" value="${fieldValue(bean: buildingInstance, field: 'downMonth')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'downPayment', 'error')} required">
	<label for="downPayment">
		<g:message code="building.downPayment.label" default="Down Payment" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="downPayment" required="" value="${fieldValue(bean: buildingInstance, field: 'downPayment')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="building.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.rnp.common.Project.list()}" optionKey="id" required="" value="${buildingInstance?.project?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'restroomAmount', 'error')} required">
	<label for="restroomAmount">
		<g:message code="building.restroomAmount.label" default="Restroom Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="restroomAmount" required="" value="${fieldValue(bean: buildingInstance, field: 'restroomAmount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'usingArea', 'error')} required">
	<label for="usingArea">
		<g:message code="building.usingArea.label" default="Using Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="usingArea" required="" value="${fieldValue(bean: buildingInstance, field: 'usingArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingInstance, field: 'width', 'error')} required">
	<label for="width">
		<g:message code="building.width.label" default="Width" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="width" required="" value="${fieldValue(bean: buildingInstance, field: 'width')}"/>
</div>


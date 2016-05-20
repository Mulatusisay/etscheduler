<%@ page import="com.etscheduler.EtDirectory" %>



<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'contactName', 'error')} required">
	<label for="contactName">
		<g:message code="etDirectory.contactName.label" default="Contact Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactName" required="" value="${etDirectoryInstance?.contactName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'position', 'error')} ">
	<label for="position">
		<g:message code="etDirectory.position.label" default="Position" />
		
	</label>
	<g:textField name="position" value="${etDirectoryInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="etDirectory.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${etDirectoryInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'extension', 'error')} ">
	<label for="extension">
		<g:message code="etDirectory.extension.label" default="Extension" />
		
	</label>
	<g:textField name="extension" value="${etDirectoryInstance?.extension}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="etDirectory.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${etDirectoryInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="etDirectory.remark.label" default="Remark" />
		
	</label>
	<g:textField name="remark" value="${etDirectoryInstance?.remark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="etDirectory.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${etDirectoryInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: etDirectoryInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="etDirectory.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${etDirectoryInstance.constraints.status.inList}" required="" value="${etDirectoryInstance?.status}" valueMessagePrefix="etDirectory.status"/>

</div>


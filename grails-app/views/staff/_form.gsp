<%@ page import="com.etscheduler.Staff" %>



<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'idNumber', 'error')} required">
	<label for="idNumber">
		<g:message code="staff.idNumber.label" default="Id Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idNumber" type="number" value="${staffInstance.idNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="staff.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${staffInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="staff.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" required="" value="${staffInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="staff.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${staffInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'workDetail', 'error')} ">
	<label for="workDetail">
		<g:message code="staff.workDetail.label" default="Work Detail" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${staffInstance?.workDetail?}" var="w">
    <li><g:link controller="workDetail" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="workDetail" action="create" params="['staff.id': staffInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'workDetail.label', default: 'WorkDetail')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'employeeDetail', 'error')} ">
	<label for="employeeDetail">
		<g:message code="staff.employeeDetail.label" default="Employee Detail" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${staffInstance?.employeeDetail?}" var="e">
    <li><g:link controller="employeeDetail" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="employeeDetail" action="create" params="['staff.id': staffInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'employeeDetail.label', default: 'EmployeeDetail')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'trainingRecord', 'error')} ">
	<label for="trainingRecord">
		<g:message code="staff.trainingRecord.label" default="Training Record" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${staffInstance?.trainingRecord?}" var="t">
    <li><g:link controller="trainingRecord" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="trainingRecord" action="create" params="['staff.id': staffInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'trainingRecord.label', default: 'TrainingRecord')])}</g:link>
</li>
</ul>


</div>


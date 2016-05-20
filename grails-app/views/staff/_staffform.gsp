
<%@ page import="com.etscheduler.Staff" %>
<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'idNumber', 'error')} required">
    <label for="idNumber">
        <g:message code="staff.idNumber.label" default="Id Number"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="idNumber" type="number" value="${staffInstance.idNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'firstName', 'error')} required">
    <label for="firstName">
        <g:message code="staff.firstName.label" default="First Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="firstName" required="" value="${staffInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'middleName', 'error')} required">
    <label for="middleName">
        <g:message code="staff.middleName.label" default="Middle Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="middleName" required="" value="${staffInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="staff.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${staffInstance?.lastName}"/>

</div>
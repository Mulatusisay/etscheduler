<%@ page import="com.etscheduler.DayOff" %>



<div class="fieldcontain ${hasErrors(bean: dayOffInstance, field: 'dayOff', 'error')} required">
    <label for="dayOff">
        <g:message code="dayOff.dayOff.label" default="Day Off"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="dayOff" required="" value="${dayOffInstance?.dayOff}"/>

</div>


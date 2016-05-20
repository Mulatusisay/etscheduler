<%@ page import="com.etscheduler.Qcpc" %>



<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'subject', 'error')} required">
	<label for="subject">
		<g:message code="qcpc.subject.label" default="Subject" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subject" required="" value="${qcpcInstance?.subject}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'problemCategory', 'error')} required">
	<label for="problemCategory">
		<g:message code="qcpc.problemCategory.label" default="Problem Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="problemCategory" from="${qcpcInstance.constraints.problemCategory.inList}" required="" value="${qcpcInstance?.problemCategory}" valueMessagePrefix="qcpc.problemCategory"/>

</div>

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'otherCategory', 'error')} ">
	<label for="otherCategory">
		<g:message code="qcpc.otherCategory.label" default="Other Category" />
		
	</label>
	<g:textField name="otherCategory" value="${qcpcInstance?.otherCategory}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'problem', 'error')} required">
	<label for="problem">
		<g:message code="qcpc.problem.label" default="Problem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="problem" cols="40" rows="5" required="" value="${qcpcInstance?.problem}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'suggestion', 'error')} required">
	<label for="suggestion">
		<g:message code="qcpc.suggestion.label" default="Suggestion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="suggestion" cols="40" rows="5" required="" value="${qcpcInstance?.suggestion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="qcpc.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${qcpcInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="qcpc.remark.label" default="Remark" />
		
	</label>
	<g:textField name="remark" value="${qcpcInstance?.remark}"/>

</div>


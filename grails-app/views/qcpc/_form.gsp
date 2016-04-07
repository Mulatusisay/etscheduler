<%@ page import="com.etscheduler.Qcpc" %>



<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="qcpc.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${qcpcInstance?.title}"/>

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

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="qcpc.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${qcpcInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: qcpcInstance, field: 'portalLink', 'error')} required">
	<label for="portalLink">
		<g:message code="qcpc.portalLink.label" default="Portal Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="portalLink" required="" value="${qcpcInstance?.portalLink}"/>

</div>


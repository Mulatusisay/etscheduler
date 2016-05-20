<%@ page import="com.etscheduler.Comment" %>

<div class="form-group">
	<g:textField name="name" value="${commentInstance?.name}" id="Name" class="form-control wow fadeInUp" placeholder="Name" required=""/>
	%{--<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'name', 'error')} required">

		<g:message code="comment.name.label" default="Name" />
		<span class="required-indicator">*</span>

		<g:textField name="name" required="" value="${commentInstance?.name}"/>

	</div>--}%
</div>

<div class="form-group">
	<g:textField name="email" id="Email" value="${commentInstance?.email}" class="form-control wow fadeInUp" placeholder="Email" required=""/>
	%{--<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'email', 'error')} required">
		<label for="email">
			<g:message code="comment.email.label" default="Email" />
			<span class="required-indicator">*</span>
		</label>
		<g:field type="email" name="email" required="" value="${commentInstance?.email}"/>

	</div>--}%
</div>
<div class="form-group">
	<g:textArea name="message" maxlength="160" value="${commentInstance?.message}" rows="20" cols="20" id="Message" class="form-control input-message wow fadeInUp"  placeholder="Message" required=""></g:textArea>
	%{--<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'message', 'error')} required">
		<label for="message">
			<g:message code="comment.message.label" default="Message" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="message" maxlength="160" required="" value="${commentInstance?.message}"/>

	</div>
--}%
</div>
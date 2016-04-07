
<%@ page import="com.etscheduler.Qcpc" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'qcpc.label', default: 'Qcpc')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-qcpc" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-qcpc" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list qcpc">
			
				<g:if test="${qcpcInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="qcpc.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${qcpcInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${qcpcInstance?.problem}">
				<li class="fieldcontain">
					<span id="problem-label" class="property-label"><g:message code="qcpc.problem.label" default="Problem" /></span>
					
						<span class="property-value" aria-labelledby="problem-label"><g:fieldValue bean="${qcpcInstance}" field="problem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${qcpcInstance?.suggestion}">
				<li class="fieldcontain">
					<span id="suggestion-label" class="property-label"><g:message code="qcpc.suggestion.label" default="Suggestion" /></span>
					
						<span class="property-value" aria-labelledby="suggestion-label"><g:fieldValue bean="${qcpcInstance}" field="suggestion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${qcpcInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="qcpc.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${qcpcInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${qcpcInstance?.portalLink}">
				<li class="fieldcontain">
					<span id="portalLink-label" class="property-label"><g:message code="qcpc.portalLink.label" default="Portal Link" /></span>
					
						<span class="property-value" aria-labelledby="portalLink-label"><g:fieldValue bean="${qcpcInstance}" field="portalLink"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:qcpcInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${qcpcInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

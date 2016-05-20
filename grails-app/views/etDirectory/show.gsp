
<%@ page import="com.etscheduler.EtDirectory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'etDirectory.label', default: 'EtDirectory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-etDirectory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				<li><a class="list" href="${createLink(uri: '/etDirectory')}"><g:message code="default.list.label" args="[entityName]"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-etDirectory" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list etDirectory">
			
				<g:if test="${etDirectoryInstance?.contactName}">
				<li class="fieldcontain">
					<span id="contactName-label" class="property-label"><g:message code="etDirectory.contactName.label" default="Contact Name" /></span>
					
						<span class="property-value" aria-labelledby="contactName-label"><g:fieldValue bean="${etDirectoryInstance}" field="contactName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${etDirectoryInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="etDirectory.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:fieldValue bean="${etDirectoryInstance}" field="position"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${etDirectoryInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="etDirectory.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${etDirectoryInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${etDirectoryInstance?.extension}">
				<li class="fieldcontain">
					<span id="extension-label" class="property-label"><g:message code="etDirectory.extension.label" default="Extension" /></span>
					
						<span class="property-value" aria-labelledby="extension-label"><g:fieldValue bean="${etDirectoryInstance}" field="extension"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${etDirectoryInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="etDirectory.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${etDirectoryInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${etDirectoryInstance?.remark}">
				<li class="fieldcontain">
					<span id="remark-label" class="property-label"><g:message code="etDirectory.remark.label" default="Remark" /></span>
					
						<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${etDirectoryInstance}" field="remark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${etDirectoryInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="etDirectory.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${etDirectoryInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${etDirectoryInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="etDirectory.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${etDirectoryInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:etDirectoryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${etDirectoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

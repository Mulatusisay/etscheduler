
<%@ page import="com.etscheduler.Staff" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-staff" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
				<li><a class="list" href="${createLink(uri: '/staff')}"><g:message code="default.list.label" args="[entityName]"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-staff" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list staff">
			
				<g:if test="${staffInstance?.idNumber}">
				<li class="fieldcontain">
					<span id="idNumber-label" class="property-label"><g:message code="staff.idNumber.label" default="Id Number" /></span>
					
						<span class="property-value" aria-labelledby="idNumber-label"><g:fieldValue bean="${staffInstance}" field="idNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="staff.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${staffInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="staff.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${staffInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="staff.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${staffInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.workDetail}">
				<li class="fieldcontain">
					<span id="workDetail-label" class="property-label"><g:message code="staff.workDetail.label" default="Work Detail" /></span>
					
						<g:each in="${staffInstance.workDetail}" var="w">
						<span class="property-value" aria-labelledby="workDetail-label"><g:link controller="workDetail" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.employeeDetail}">
				<li class="fieldcontain">
					<span id="employeeDetail-label" class="property-label"><g:message code="staff.employeeDetail.label" default="Employee Detail" /></span>
					
						<g:each in="${staffInstance.employeeDetail}" var="e">
						<span class="property-value" aria-labelledby="employeeDetail-label"><g:link controller="employeeDetail" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${staffInstance?.trainingRecord}">
				<li class="fieldcontain">
					<span id="trainingRecord-label" class="property-label"><g:message code="staff.trainingRecord.label" default="Training Record" /></span>
					
						<g:each in="${staffInstance.trainingRecord}" var="t">
						<span class="property-value" aria-labelledby="trainingRecord-label"><g:link controller="trainingRecord" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:staffInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${staffInstance}"><g:message code="default.button.Add Detail.label" default="Add Detail" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.etscheduler.Qcpc" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'qcpc.label', default: 'Qcpc')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-qcpc" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-qcpc" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'qcpc.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="problem" title="${message(code: 'qcpc.problem.label', default: 'Problem')}" />
					
						<g:sortableColumn property="suggestion" title="${message(code: 'qcpc.suggestion.label', default: 'Suggestion')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'qcpc.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="portalLink" title="${message(code: 'qcpc.portalLink.label', default: 'Portal Link')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${qcpcInstanceList}" status="i" var="qcpcInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${qcpcInstance.id}">${fieldValue(bean: qcpcInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: qcpcInstance, field: "problem")}</td>
					
						<td>${fieldValue(bean: qcpcInstance, field: "suggestion")}</td>
					
						<td>${fieldValue(bean: qcpcInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: qcpcInstance, field: "portalLink")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${qcpcInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

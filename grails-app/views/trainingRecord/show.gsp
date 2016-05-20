<%@ page import="com.etscheduler.TrainingRecord" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'trainingRecord.label', default: 'TrainingRecord')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-trainingRecord" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                     default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>--}%
        <li><a class="list" href="${createLink(uri: '/trainingRecord')}"><g:message code="default.list.label" args="[entityName]"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-trainingRecord" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list trainingRecord">

        <g:if test="${trainingRecordInstance?.staff}">
            <li class="fieldcontain">
                <span id="staff-label" class="property-label"><g:message code="trainingRecord.staff.label"
                                                                         default="Staff"/></span>

                <span class="property-value" aria-labelledby="staff-label"><g:link controller="staff" action="show"
                                                                                   id="${trainingRecordInstance?.staff?.id}">${trainingRecordInstance?.staff?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${trainingRecordInstance?.training}">
            <li class="fieldcontain">
                <span id="training-label" class="property-label"><g:message code="trainingRecord.training.label"
                                                                            default="Training"/></span>

                <span class="property-value" aria-labelledby="training-label"><g:link controller="training"
                                                                                      action="show"
                                                                                      id="${trainingRecordInstance?.training?.id}">${trainingRecordInstance?.training?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${trainingRecordInstance?.trainingStatus}">
            <li class="fieldcontain">
                <span id="trainingStatus-label" class="property-label"><g:message
                        code="trainingRecord.trainingStatus.label" default="Training Status"/></span>

                <span class="property-value" aria-labelledby="trainingStatus-label"><g:fieldValue
                        bean="${trainingRecordInstance}" field="trainingStatus"/></span>

            </li>
        </g:if>

        <g:if test="${trainingRecordInstance?.courceCompletedDate}">
            <li class="fieldcontain">
                <span id="courceCompletedDate-label" class="property-label"><g:message
                        code="trainingRecord.courceCompletedDate.label" default="Cource Completed Date"/></span>

                <span class="property-value" aria-labelledby="courceCompletedDate-label"><g:formatDate
                        date="${trainingRecordInstance?.courceCompletedDate}"/></span>

            </li>
        </g:if>

        <g:if test="${trainingRecordInstance?.nextRefresherDate}">
            <li class="fieldcontain">
                <span id="nextRefresherDate-label" class="property-label"><g:message
                        code="trainingRecord.nextRefresherDate.label" default="Next Refresher Date"/></span>

                <span class="property-value" aria-labelledby="nextRefresherDate-label"><g:formatDate
                        date="${trainingRecordInstance?.nextRefresherDate}"/></span>

            </li>
        </g:if>

        <g:if test="${trainingRecordInstance?.certificateType}">
            <li class="fieldcontain">
                <span id="certificateType-label" class="property-label"><g:message
                        code="trainingRecord.certificateType.label" default="Certificate Type"/></span>

                <span class="property-value" aria-labelledby="certificateType-label"><g:fieldValue
                        bean="${trainingRecordInstance}" field="certificateType"/></span>

            </li>
        </g:if>

        <g:if test="${trainingRecordInstance?.requirement}">
            <li class="fieldcontain">
                <span id="requirement-label" class="property-label"><g:message code="trainingRecord.requirement.label"
                                                                               default="Requirement"/></span>

                <span class="property-value" aria-labelledby="requirement-label"><g:fieldValue
                        bean="${trainingRecordInstance}" field="requirement"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: trainingRecordInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${trainingRecordInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

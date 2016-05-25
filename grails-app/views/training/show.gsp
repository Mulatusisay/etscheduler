<%@ page import="com.etscheduler.Training" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'training.label', default: 'Training')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-training" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        %{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>--}%
        <li><a class="list" href="${createLink(uri: '/training')}"><g:message code="default.list.label" args="[entityName]"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-training" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list training">

        <g:if test="${trainingInstance?.courseId}">
            <li class="fieldcontain">
                <span id="courseId-label" class="property-label"><g:message code="training.courseId.label"
                                                                            default="Course Id"/></span>

                <span class="property-value" aria-labelledby="courseId-label"><g:fieldValue bean="${trainingInstance}"
                                                                                            field="courseId"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.courseName}">
            <li class="fieldcontain">
                <span id="courseName-label" class="property-label"><g:message code="training.courseName.label"
                                                                              default="Course Name"/></span>

                <span class="property-value" aria-labelledby="courseName-label"><g:fieldValue bean="${trainingInstance}"
                                                                                              field="courseName"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="training.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                        bean="${trainingInstance}" field="description"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.courseDurationInHours}">
            <li class="fieldcontain">
                <span id="courseDurationInHours-label" class="property-label"><g:message
                        code="training.courseDurationInHours.label" default="Course Duration In Hours"/></span>

                <span class="property-value" aria-labelledby="courseDurationInHours-label"><g:fieldValue
                        bean="${trainingInstance}" field="courseDurationInHours"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.category}">
            <li class="fieldcontain">
                <span id="category-label" class="property-label"><g:message code="training.category.label"
                                                                            default="Category"/></span>

                <span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${trainingInstance}"
                                                                                            field="category"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.refresherDurationInMonths}">
            <li class="fieldcontain">
                <span id="refresherDurationInMonths-label" class="property-label"><g:message
                        code="training.refresherDurationInMonths.label" default="Refresher Duration In Months"/></span>

                <span class="property-value" aria-labelledby="refresherDurationInMonths-label"><g:fieldValue
                        bean="${trainingInstance}" field="refresherDurationInMonths"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.trainingConducted}">
            <li class="fieldcontain">
                <span id="trainingConducted-label" class="property-label"><g:message
                        code="training.trainingConducted.label" default="Training Conducted"/></span>

                <span class="property-value" aria-labelledby="trainingConducted-label"><g:fieldValue
                        bean="${trainingInstance}" field="trainingConducted"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.prerequisite}">
            <li class="fieldcontain">
                <span id="prerequisite-label" class="property-label"><g:message code="training.prerequisite.label"
                                                                                default="Prerequisite"/></span>

                <span class="property-value" aria-labelledby="prerequisite-label"><g:fieldValue
                        bean="${trainingInstance}" field="prerequisite"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: trainingInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${trainingInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

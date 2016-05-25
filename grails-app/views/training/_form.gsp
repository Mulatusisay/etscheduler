<%@ page import="com.etscheduler.Training" %>



<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'courseId', 'error')} required">
    <label for="courseId">
        <g:message code="training.courseId.label" default="Course Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="courseId" required="" value="${trainingInstance?.courseId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'courseName', 'error')} required">
    <label for="courseName">
        <g:message code="training.courseName.label" default="Course Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="courseName" required="" value="${trainingInstance?.courseName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="training.description.label" default="Description"/>

    </label>
    <g:textField name="description" value="${trainingInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'courseDurationInHours', 'error')} required">
    <label for="courseDurationInHours">
        <g:message code="training.courseDurationInHours.label" default="Course Duration In Hours"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="courseDurationInHours" type="number" value="${trainingInstance.courseDurationInHours}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'category', 'error')} ">
    <label for="category">
        <g:message code="training.category.label" default="Category"/>

    </label>
    <g:textField name="category" value="${trainingInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'refresherDurationInMonths', 'error')} ">
    <label for="refresherDurationInMonths">
        <g:message code="training.refresherDurationInMonths.label" default="Refresher Duration In Months"/>

    </label>
    <g:field name="refresherDurationInMonths" type="number" value="${trainingInstance.refresherDurationInMonths}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'trainingConducted', 'error')} required">
    <label for="trainingConducted">
        <g:message code="training.trainingConducted.label" default="Training Conducted"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="trainingConducted" from="${trainingInstance.constraints.trainingConducted.inList}" required=""
              value="${trainingInstance?.trainingConducted}" valueMessagePrefix="training.trainingConducted"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'prerequisite', 'error')} ">
    <label for="prerequisite">
        <g:message code="training.prerequisite.label" default="Prerequisite"/>

    </label>
    <g:textField name="prerequisite" value="${trainingInstance?.prerequisite}"/>

</div>


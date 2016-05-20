<%@ page import="com.etscheduler.TrainingRecord" %>



<div class="fieldcontain ${hasErrors(bean: trainingRecordInstance, field: 'staff', 'error')} required">
    <label for="staff">
        <g:message code="trainingRecord.staff.label" default="Staff"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="staff" name="staff.id" from="${com.etscheduler.Staff.list()}" optionKey="id" required=""
              value="${trainingRecordInstance?.staff?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingRecordInstance, field: 'training', 'error')} required">
    <label for="training">
        <g:message code="trainingRecord.training.label" default="Training"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="training" name="training.id" from="${com.etscheduler.Training.list()}" optionKey="id" required=""
              value="${trainingRecordInstance?.training?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingRecordInstance, field: 'trainingStatus', 'error')} required">
    <label for="trainingStatus">
        <g:message code="trainingRecord.trainingStatus.label" default="Training Status"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="trainingStatus" from="${trainingRecordInstance.constraints.trainingStatus.inList}" required=""
              value="${trainingRecordInstance?.trainingStatus}" valueMessagePrefix="trainingRecord.trainingStatus"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingRecordInstance, field: 'courceCompletedDate', 'error')} required">
    <label for="courceCompletedDate">
        <g:message code="trainingRecord.courceCompletedDate.label" default="Cource Completed Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="courceCompletedDate" precision="day" value="${trainingRecordInstance?.courceCompletedDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingRecordInstance, field: 'nextRefresherDate', 'error')} ">
    <label for="nextRefresherDate">
        <g:message code="trainingRecord.nextRefresherDate.label" default="Next Refresher Date"/>

    </label>
    <g:datePicker name="nextRefresherDate" precision="day" value="${trainingRecordInstance?.nextRefresherDate}"
                  default="none" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingRecordInstance, field: 'certificateType', 'error')} required">
    <label for="certificateType">
        <g:message code="trainingRecord.certificateType.label" default="Certificate Type"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="certificateType" from="${trainingRecordInstance.constraints.certificateType.inList}" required=""
              value="${trainingRecordInstance?.certificateType}" valueMessagePrefix="trainingRecord.certificateType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: trainingRecordInstance, field: 'requirement', 'error')} required">
    <label for="requirement">
        <g:message code="trainingRecord.requirement.label" default="Requirement"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="requirement" from="${trainingRecordInstance.constraints.requirement.inList}" required=""
              value="${trainingRecordInstance?.requirement}" valueMessagePrefix="trainingRecord.requirement"/>

</div>


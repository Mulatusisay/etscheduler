<%@ page import="com.etscheduler.Schedule" %>



<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'trainingRecord', 'error')} ">
    <label for="trainingRecord">
        <g:message code="schedule.trainingRecord.label" default="Training Record"/>

    </label>
    <g:select name="trainingRecord" from="${com.etscheduler.TrainingRecord.list()}" multiple="multiple" optionKey="id"
              size="5" value="${scheduleInstance?.trainingRecord*.id}" class="many-to-many"/>

</div>


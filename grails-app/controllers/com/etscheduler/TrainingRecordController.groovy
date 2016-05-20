package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class TrainingRecordController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TrainingRecord.list(params), model: [trainingRecordInstanceCount: TrainingRecord.count()]
    }

    def explist() {
        def query=TrainingRecord.where {
            courceCompletedDate < new Date()+90 || courceCompletedDate < new Date()- 30
            // def record=TrainingRecord.findAllByNextScheduleDateBetween(new Date()-30,new Date()+90 )
            order("nextRefresherDate", "asc")
        }

        def explist=query.list()
        def count=query.list()

        render view: 'index', model: [trainingRecordInstanceList:explist, trainingRecordInstanceCount:count]
    }
    def nextRefresherList() {
        def query=TrainingRecord.where {
            nextRefresherDate < new Date()+90 || nextRefresherDate < new Date()- 30
            // def record=TrainingRecord.findAllByNextScheduleDateBetween(new Date()-30,new Date()+90 )
            order("nextRefresherDate", "asc")
        }

        def nextRefresherList=query.list()
        def count=query.list()

        render view: 'nextRefresherList', model: [trainingRecordInstanceList:nextRefresherList, trainingRecordInstanceCount:count]
    }
    def iata() {
        def query=TrainingRecord.findAllByCertificateTypeAndRequirement("IATA","Mandatory")
        def count=query.listIterator()
        render view: 'index', model: [trainingRecordInstanceList:query, trainingRecordInstanceCount:count]
        /* def query=TrainingRecord.where {
             nextScheduleDate < new Date()+90 &&  like("training", "DGR%") // && nextScheduleDate < new Date()- 30
            // order("nextScheduleDate", "asc")
         }*/

    }
    def show(TrainingRecord trainingRecordInstance) {
        respond trainingRecordInstance
    }

    def create() {
        respond new TrainingRecord(params)
    }

    @Transactional
    def save(TrainingRecord trainingRecordInstance) {
        if (trainingRecordInstance == null) {
            notFound()
            return
        }

        if (trainingRecordInstance.hasErrors()) {
            respond trainingRecordInstance.errors, view: 'create'
            return
        }

        trainingRecordInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trainingRecord.label', default: 'TrainingRecord'), trainingRecordInstance.id])
                redirect trainingRecordInstance
            }
            '*' { respond trainingRecordInstance, [status: CREATED] }
        }
    }

    def edit(TrainingRecord trainingRecordInstance) {
        respond trainingRecordInstance
    }

    @Transactional
    def update(TrainingRecord trainingRecordInstance) {
        if (trainingRecordInstance == null) {
            notFound()
            return
        }

        if (trainingRecordInstance.hasErrors()) {
            respond trainingRecordInstance.errors, view: 'edit'
            return
        }

        trainingRecordInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TrainingRecord.label', default: 'TrainingRecord'), trainingRecordInstance.id])
                redirect trainingRecordInstance
            }
            '*' { respond trainingRecordInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TrainingRecord trainingRecordInstance) {

        if (trainingRecordInstance == null) {
            notFound()
            return
        }

        trainingRecordInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TrainingRecord.label', default: 'TrainingRecord'), trainingRecordInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingRecord.label', default: 'TrainingRecord'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}

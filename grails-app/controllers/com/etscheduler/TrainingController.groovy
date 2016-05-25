package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class TrainingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Training.list(params), model: [trainingInstanceCount: Training.count()]
    }

    def show(Training trainingInstance) {
        respond trainingInstance
    }

    def create() {
        respond new Training(params)
    }

    @Transactional
    def save(Training trainingInstance) {
        if (trainingInstance == null) {
            notFound()
            return
        }

        if (trainingInstance.hasErrors()) {
            respond trainingInstance.errors, view: 'create'
            return
        }

        trainingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'training.label', default: 'Training'), trainingInstance.id])
                redirect trainingInstance
            }
            '*' { respond trainingInstance, [status: CREATED] }
        }
    }

    def edit(Training trainingInstance) {
        respond trainingInstance
    }

    @Transactional
    def update(Training trainingInstance) {
        if (trainingInstance == null) {
            notFound()
            return
        }

        if (trainingInstance.hasErrors()) {
            respond trainingInstance.errors, view: 'edit'
            return
        }

        trainingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Training.label', default: 'Training'), trainingInstance.id])
                redirect trainingInstance
            }
            '*' { respond trainingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Training trainingInstance) {

        if (trainingInstance == null) {
            notFound()
            return
        }

        trainingInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Training.label', default: 'Training'), trainingInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'training.label', default: 'Training'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}

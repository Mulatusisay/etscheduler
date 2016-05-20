package com.etscheduler


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DayOffController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DayOff.list(params), model: [dayOffInstanceCount: DayOff.count()]
    }

    def show(DayOff dayOffInstance) {
        respond dayOffInstance
    }

    def create() {
        respond new DayOff(params)
    }

    @Transactional
    def save(DayOff dayOffInstance) {
        if (dayOffInstance == null) {
            notFound()
            return
        }

        if (dayOffInstance.hasErrors()) {
            respond dayOffInstance.errors, view: 'create'
            return
        }

        dayOffInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dayOff.label', default: 'DayOff'), dayOffInstance.id])
                redirect dayOffInstance
            }
            '*' { respond dayOffInstance, [status: CREATED] }
        }
    }

    def edit(DayOff dayOffInstance) {
        respond dayOffInstance
    }

    @Transactional
    def update(DayOff dayOffInstance) {
        if (dayOffInstance == null) {
            notFound()
            return
        }

        if (dayOffInstance.hasErrors()) {
            respond dayOffInstance.errors, view: 'edit'
            return
        }

        dayOffInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DayOff.label', default: 'DayOff'), dayOffInstance.id])
                redirect dayOffInstance
            }
            '*' { respond dayOffInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DayOff dayOffInstance) {

        if (dayOffInstance == null) {
            notFound()
            return
        }

        dayOffInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DayOff.label', default: 'DayOff'), dayOffInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dayOff.label', default: 'DayOff'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}

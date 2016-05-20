package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['permitAll'])
@Transactional(readOnly = true)
class QcpcController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    @Secured(['ROLE_ADMIN'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Qcpc.list(params), model:[qcpcInstanceCount: Qcpc.count()]
    }

    def show(Qcpc qcpcInstance) {
        respond qcpcInstance
    }

    def create() {
        respond new Qcpc(params)
    }

    @Transactional
    def save(Qcpc qcpcInstance) {
        if (qcpcInstance == null) {
            notFound()
            return
        }

        if (qcpcInstance.hasErrors()) {
            respond qcpcInstance.errors, view:'create'
            return
        }

        qcpcInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'qcpc.label', default: 'Qcpc'), qcpcInstance.id])
                redirect qcpcInstance
            }
            '*' { respond qcpcInstance, [status: CREATED] }
        }
    }

    def edit(Qcpc qcpcInstance) {
        respond qcpcInstance
    }

    @Transactional
    def update(Qcpc qcpcInstance) {
        if (qcpcInstance == null) {
            notFound()
            return
        }

        if (qcpcInstance.hasErrors()) {
            respond qcpcInstance.errors, view:'edit'
            return
        }

        qcpcInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Qcpc.label', default: 'Qcpc'), qcpcInstance.id])
                redirect qcpcInstance
            }
            '*'{ respond qcpcInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Qcpc qcpcInstance) {

        if (qcpcInstance == null) {
            notFound()
            return
        }

        qcpcInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Qcpc.label', default: 'Qcpc'), qcpcInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'qcpc.label', default: 'Qcpc'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

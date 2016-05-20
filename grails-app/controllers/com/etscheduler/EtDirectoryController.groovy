package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['permitAll'])
@Transactional(readOnly = true)
class EtDirectoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EtDirectory.list(params), model: [etDirectoryInstanceCount: EtDirectory.count()]
    }

    def show(EtDirectory etDirectoryInstance) {
        respond etDirectoryInstance
    }
    @Secured(['ROLE_ADMIN'])
    def create() {
        respond new EtDirectory(params)
    }

    @Transactional
    def save(EtDirectory etDirectoryInstance) {
        if (etDirectoryInstance == null) {
            notFound()
            return
        }

        if (etDirectoryInstance.hasErrors()) {
            respond etDirectoryInstance.errors, view: 'create'
            return
        }

        etDirectoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'etDirectory.label', default: 'EtDirectory'), etDirectoryInstance.id])
                redirect etDirectoryInstance
            }
            '*' { respond etDirectoryInstance, [status: CREATED] }
        }
    }
//    @Secured(['ROLE_ADMIN'])
    def edit(EtDirectory etDirectoryInstance) {
        respond etDirectoryInstance
    }

    @Transactional
    def update(EtDirectory etDirectoryInstance) {
        if (etDirectoryInstance == null) {
            notFound()
            return
        }

        if (etDirectoryInstance.hasErrors()) {
            respond etDirectoryInstance.errors, view: 'edit'
            return
        }

        etDirectoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EtDirectory.label', default: 'EtDirectory'), etDirectoryInstance.id])
                redirect etDirectoryInstance
            }
            '*' { respond etDirectoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EtDirectory etDirectoryInstance) {

        if (etDirectoryInstance == null) {
            notFound()
            return
        }

        etDirectoryInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EtDirectory.label', default: 'EtDirectory'), etDirectoryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'etDirectory.label', default: 'EtDirectory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}

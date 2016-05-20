package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class StaffController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Staff.list(params), model: [staffInstanceCount: Staff.count()]
    }
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Staff.list(params), model: [staffInstanceCount: Staff.count()]
    }
    def trainee() {
        //  def record=TrainingRecord.findAllByNextScheduleDateBetween(new Date()-30,new Date()+90 )
        //def result=WorkDetail.findAllByTitle("Agent")
        def query=Staff.where {
            //     idNumber < 18605 && firstName == ""

            idNumber>0001
        }
        def trainee=query.list()
        def count=query.list()
        // def query=Staff.findAllByIdNumberLessThan(18605)
        //def count=Staff.countByIdNumberLessThan(18605)
        render view: 'index', model: [staffInstanceList:trainee, staffInstanceCount:count]
    }


    def show(Staff staffInstance) {
        respond staffInstance
    }

    def create() {
        respond new Staff(params)
    }

    @Transactional
    def save(Staff staffInstance) {
        if (staffInstance == null) {
            notFound()
            return
        }

        if (staffInstance.hasErrors()) {
            respond staffInstance.errors, view: 'create'
            return
        }

        staffInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'staff.label', default: 'Staff'), staffInstance.id])
                redirect staffInstance
            }
            '*' { respond staffInstance, [status: CREATED] }
        }
    }

    def edit(Staff staffInstance) {
        respond staffInstance
    }

    @Transactional
    def update(Staff staffInstance) {
        if (staffInstance == null) {
            notFound()
            return
        }

        if (staffInstance.hasErrors()) {
            respond staffInstance.errors, view: 'edit'
            return
        }

        staffInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Staff.label', default: 'Staff'), staffInstance.id])
                redirect staffInstance
            }
            '*' { respond staffInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Staff staffInstance) {

        if (staffInstance == null) {
            notFound()
            return
        }

        staffInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Staff.label', default: 'Staff'), staffInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'staff.label', default: 'Staff'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}

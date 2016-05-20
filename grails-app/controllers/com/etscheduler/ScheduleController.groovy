package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ScheduleController {
    def Scaffold=true;
    def index() {}
    def list() {
              def query=Staff.where {
                  idNumber < 18605
              }
              def list=query.list()
              def count=query.list()
       // def query=Staff.findAllByIdNumberLessThan(18605)
        //def count=Staff.countByIdNumberLessThan(18605)
        render view: 'list', model: [staffInstanceList:list, staffInstanceCount:count]
    }

}

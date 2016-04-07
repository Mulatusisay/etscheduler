package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TrainingRecordController {
    def Scaffold=true;
    def index() {}
}

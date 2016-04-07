package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ScheduleController {
    def Scaffold=true;
    def index() {}
}

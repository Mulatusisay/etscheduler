package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class StaffController {
    def Scaffold=true;
    def index() { }
}

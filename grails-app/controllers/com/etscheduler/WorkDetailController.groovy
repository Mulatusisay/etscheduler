package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class WorkDetailController {
    def Scaffold=true;

    def index() {}
}

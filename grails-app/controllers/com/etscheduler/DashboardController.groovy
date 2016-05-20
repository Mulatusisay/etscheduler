package com.etscheduler

import grails.plugin.springsecurity.annotation.Secured
@Secured (['ROLE_ADMIN'])
class DashboardController {
        def Scaffold=true;
        def index() {}
    }
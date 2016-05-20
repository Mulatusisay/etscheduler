package com.etscheduler

import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TrainingController {
    def Scaffold=true;

    def index() {}

    //def record=TrainingRecord.findAllByNextScheduleDateBetween(new Date()-30,new Date()+90 )

    def list() {
        def query = Training.where {
            courseDurationInHours > 1
        }
        def courses = query.list()
        def count = query.list()

        render view: 'list', model: [trainingInstanceList: courses, traininigInstanceCount: count]

    }
}

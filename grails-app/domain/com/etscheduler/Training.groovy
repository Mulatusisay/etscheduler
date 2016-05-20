package com.etscheduler

class Training {
    String  courseId
    String  courseName
    String  description
    Integer courseDurationInHours
    String  category
    Integer refresherDurationInMonths
    String  prerequisite
    String  trainingConducted

    String toString(){
        "${courseId},${courseName},${refresherDurationInMonths}"//,${expireDurationMonth}
    }

    static constraints = {
        courseId blank: false, nullable: false, unique: true
        courseName blank: false, nullable: false
        description blank: true, nullable: true
        courseDurationInHours blank: true, nullable: false
        category blank: true , nullable: true
        refresherDurationInMonths blank:true, nullable: true
        trainingConducted inList: ["On-line", "Class Rooom", "Practical", "OJT"]
        prerequisite blank: true, nullable: true
    }
}

package com.etscheduler



class Training {
    String traingCode
    String courseName
    Integer expireDurationMonth
    String typesOfTraining
    String trainingCatagory


    //static hasMany = [trainingRecord: TrainingRecord]
    //static mappedBy = [expDate:"exDuration"]

    String toString(){
        "${courseName},${expireDurationMonth}"
    }

    static constraints = {
        traingCode blank: true, nullable: true
        courseName blank: false
        expireDurationMonth blank: false
        typesOfTraining inList: ["Mandatory", "Optional"]
        trainingCatagory inList: ["IATA", "IOSA", "Star Alliance","ETA"]

    }
}

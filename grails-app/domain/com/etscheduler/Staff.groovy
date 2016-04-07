package com.etscheduler

class Staff {
    String idNumber
    String firstName
    String middleName
    String lastName



    String toString(){
        "${idNumber},${firstName}"
    }

    static hasMany = [trainingRecord:TrainingRecord, employeeDetail:EmployeeDetail, workDetail:WorkDetail]//, training:Training


    static constraints = {
      idNumber blank: false, unique: true
      firstName blank: false
      middleName blank: true, nullable: true
      trainingRecord blank:true, nullable: true
      workDetail blank:true, nullable: true
      employeeDetail blank:true, nullable: true
      lastName blank:true
    }

}

package com.etscheduler

class Staff {
    Integer idNumber
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
      middleName blank: false, nullable: false
      lastName blank:true, nullable: true
      workDetail blank:true, nullable: true
      employeeDetail  nullable: true
      trainingRecord blank:true, nullable: true
    }

}

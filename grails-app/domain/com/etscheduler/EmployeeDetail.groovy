package com.etscheduler

class EmployeeDetail {
    String gender
    String email
    String address
    String city
    String phoneNumber
    Date birthDate=(new Date().minus((365.125*18).toInteger()))

    static belongsTo = [employee:Staff]
    String toString () {
        "${phoneNumber},${email}"
    }

    static constraints = {
        employee unique: true
        phoneNumber  blank: true, nullable: true
        email email: true,blank: true, nullable: true
        birthDate blank:true
        gender inList: ["M","F"]
        address  blank: true, nullable: true
        city  blank: true, nullable: true

    }
}

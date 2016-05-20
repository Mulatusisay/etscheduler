package com.etscheduler

class Qcpc {
    String subject
    String problemCategory
    String otherCategory
    String problem
    String suggestion
    String email
    String remark
    static constraints = {
        subject blank: false, nullable: false
        problemCategory inList: ["Administrative","Agent","Baggage","BCH","Cargo","Facilities","GSE","Quality","OTP","Portal","Safety","Temporary Staff","ULD","x-ray"]
        otherCategory blank: true, nullable: true
        problem widget:'textarea'
        suggestion widget:'textarea'
        email email: true, nullable:true
        remark blank: true, nullable: true
    }
}

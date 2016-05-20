package com.etscheduler

class EtDirectory {
    String contactName
    String position
    String phoneNumber
    String extension
    String email
    String remark
    String location
    String status
    static constraints = {
        contactName()
        position nullable: true
        phoneNumber()
        extension nullable: true
        email email: true, nullable: true
        remark nullable: true
        location nullable: true
        status inList: ["Active","Under Maintain","Vacation","Not-Available"]
    }
}

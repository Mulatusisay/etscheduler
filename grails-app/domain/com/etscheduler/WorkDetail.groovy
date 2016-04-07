package com.etscheduler

class WorkDetail {

        String title //agent
        String position //csa
        String status
        String department
        String costCenter
        String schShift
        String dayOff
        Date seniorityDate

        static belongsTo = [employee:Staff]
        String toString () {
            "${position},${department}"
        }

        static constraints = {
            employee blank : true, nullable: true
            title inList: [ "BCH","Agent","GSE","","Part timer","Appearance","Ramp Svc","Loader "]
            position inList: ["Select..P","MLF","G4","Group Leader","Clerk","JCSA","CSA","SCS-I","SCS-II","Assistance","Acting","I","II","III","Team Leader","A/Manager","Manager","CRO",""]
            status inList: ["Select..S", "Temporary","Contract","Permanent","Trainee","Par Timer","Pending","Suspended","Terminated"]
            department inList: ["Select..d","RampSrvc","PassangerSrvc","CLS","BaggageSrvc","other"], blank: true
            costCenter blank: true, nullable: true
            schShift inList: ["Select..S","ERMN","LTMR","OffHour","EVNG","LTEV"], blank: true, nullable: true
            dayOff inList: ["MON","TUE","WED","THU","FRI","SAT","SUN"], blank: true, nullable: true
            seniorityDate  blank: true, nullable: true
        }
    }

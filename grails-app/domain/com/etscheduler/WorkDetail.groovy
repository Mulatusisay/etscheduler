package com.etscheduler

class WorkDetail {

        String title //agent
        String position //csa
        String status
        String department
        String costCenter
        String team
        String scheduledShift
        Date seniorityDate

        //DayOff dayOff1
        static hasMany =[dayOff:DayOff]
        static belongsTo = [employee:Staff]
        String toString () {
            "$position,$team,$dayOff"
        }

        static constraints = {
            employee unique: true, blank : false, nullable: false
            title inList: [ "Agent","GSE","BCH-Per","BCH-Tem","Appearance","Ramp Svc","Passenger Srvc ","Baggage Srvc"]
            position  nullable: false
            status inList: [ "Temporary","Permanent","Trainee","Par Timer","Pending","Suspended","Terminated"]
            department blank: false,nullable: false
            costCenter blank: true, nullable: true
            team nullable:false //inList: ["ZONE-1","ZONE-2","ZONE-3","ZONE-4","B/A-I","B/A-D","BRS"]
            scheduledShift inList: ["ERMN","LTMR","OFHR","MDDY","EVNG","LTEV","GRVE"]
            //  dayOff inList: ["MON","TUE","WED","THU","FRI","SAT","SUN"]//.subsequences() as List)//"MON&TUE","TUE&WED","WED&THU","THU&FRI","FRI&SAT","SAT&SUN","SUN&MON","MON","TUE","WED","THU","FRI","SAT","SUN"]
            seniorityDate   blank: true
            dayOff  nullable:true
        }
    }

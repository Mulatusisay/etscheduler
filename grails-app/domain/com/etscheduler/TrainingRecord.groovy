package com.etscheduler

class TrainingRecord implements Comparable {
    String trainingStatus
    Date   courceCompletedDate=new Date()
    Date   nextRefresherDate=(new Date().plus((365.125*1).toInteger()))
    String certificateType
    String requirement
    int getDuration(){
        nextRefresherDate-courceCompletedDate
    }
    static transients={'duration'}

    String toString(){
        "${training},${courceCompletedDate}"
    }

    Training training  // has Many to one r/ship
    static belongsTo = [staff: Staff]//if staff deleted this will be deleted, training:Training

    int compareTo(obj){
        nextRefresherDate.compareTo(obj.courceCompletedDate)
    }

    static constraints = {
        staff blank : false, nullable: false
        training blank: false, nullable: false
        trainingStatus inList: ["Initial", "Refresher", "Promotional"]
        courceCompletedDate blank:false
       // nextRefresherDate nullable: true //(max: (new Date()+365*1) )//nextScheduleDate min: 18 ...
        certificateType inList: ["IATA", "IOSA", "Star Alliance","ET"]
        requirement inList: ["Mandatory", "optional"]
        nextRefresherDate validator: {val, t->
                        val>=t.courceCompletedDate

        }
        duration blank:true
    }

}

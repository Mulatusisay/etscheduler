package com.etscheduler

class TrainingRecord implements Comparable {
    String trainingStatus
    Date   certifiedDate
    Date   nextScheduleDate=(new Date().plus((365.125*1).toInteger()))

    String toString(){
        "${training},${nextScheduleDate}"
    }

    Training training  // has Many to one r/ship
    static belongsTo = [staff: Staff]//if staff deleted this will be deleted, training:Training

    int compareTo(obj){
        nextScheduleDate.compareTo(obj.nextScheduleDate)
    }

    static constraints = {
        staff blank : true, nullable: true
        training blank: false, nullable: true
        trainingStatus inList: ["Initial", "Refresher", "Promotional"]
        certifiedDate blank:false
        nextScheduleDate nullable: true //(max: (new Date()+365*1) )//nextScheduleDate min: 18 ...


    }

}

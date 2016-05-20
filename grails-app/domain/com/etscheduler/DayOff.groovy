package com.etscheduler

class DayOff {

        String dayOff

    String toString () {
        "${dayOff}"
    }


    static constraints = {
       // dayOffL inList: ["MON","TUE","WED","THU","FRI","SAT","SUN"]
        dayOff unique: true, blank: false, nullable: false
    }

}

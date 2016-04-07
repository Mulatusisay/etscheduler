package com.etscheduler

class Qcpc {
    String title
    String problem
    String suggestion
    String email
    String portalLink
    static constraints = {
        title blank: true
        problem widget:'textarea'
        suggestion widget:'textarea'
        email email: true
        portalLink url: true

    }
}

package com.etscheduler

class Comment {

    String name
    String email
    String message

    static constraints = {
        name blank: false, nullable: false
        email email: true
        message maxSize: 160
    }
}

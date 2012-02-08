package com.rnp.common

class Zone {

    static constraints = {
        title(unique:true, blank:false)
    }
    String title
}

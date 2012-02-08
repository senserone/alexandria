package com.rnp.common

class Brand {

    static constraints = {
        title(unique:true, blank:false, display:true)
        description(maxSize:1500)
        contact(maxSize:1500, display:true)
        address(maxSize:1500, display:true)
    }
    
    static hasMany = [projects: Project]
    
    String title
    String owner
    String address
    String description
    String contact
    
}

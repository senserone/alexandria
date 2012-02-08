package com.rnp.common

class Project {

    static constraints = {
        title(blank:false, display:true)
        address(maxSize:1500, blank:false, display:true)
        contact(maxSize:1500, blank:false, display:true)
        promotion(maxSize:1500, display:true)
    }
    
    static belongsTo = [brand:Brand]
    static hasMany = [buildings:Building, images:Image]
    
    Zone zone
    
    String title
    String description
    
    String address
    String mapAddressURL
    
    String contact
    String promotion
}

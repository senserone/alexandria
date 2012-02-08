package com.rnp.common

class Image {

    static constraints = {
        title(blank:false)
        imageUrl(unique:true, blank:false)
        description(maxSize:1500)
    }
    
    static belongsTo = [project: Project]
    
    String title
    String description
    String imageUrl // use imageshack
}

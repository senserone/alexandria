package com.rnp.common

class Building {

    public enum BuildingType{
        D("Detached House"), //detached house,separate house,a stand alone house, single-detached dwelling, Single Family Home(US)
        S("Semi-detached House"), // Semi-detached house, Duplex(US) บ้านแฝด
        T("Terrace"), // Terrace, Townhouse(US)
        C("Condominium"),
        A("Apartments")
 
        final String value;
 
        BuildingType(String value) {
            this.value = value;
        }
        String toString(){
            value;
        }
        String getKey(){
            name()
        }
        static list() {
            [D,S,T,C,A]
        }
    }
    
    static constraints = {
        title(blank:false, display:true)
        description(maxSize:1500)
        unitAmount(blank:false, display:true)
        area(display:true)
        price(display:true)
    }
    
    static belongsTo = [project:Project]
    
    String title
    String description
    
    Integer unitAmount
    
    /*
        info per unit
     */
    Double area
    Double width
    Double deep
    Double usingArea
    
    Integer bedroomAmount
    Integer restroomAmount
    
    Double price            // ราคาขาย
    Double bookingPayment     // เงินจอง
    Double contractPayment    // เงินทำสัญญา
    Double downPayment
    Integer downMonth
    
}


package model;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.io.Serializable;

public class Shout implements Serializable {
    
    
    private String datum;
    private String name;
    private String message;
    
    public Shout(){
       
       DateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
       Date date = new Date();
       this.datum = dateFormat.format(date);
        
    }
    
    
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public String getMessage(){
        return message;
    }
    
    public void setMessage(String message){
        this.message = message;
    }
    
    public String getDatum(){
        return datum;
    }
    
    public void setDatum(String datum){
        this.datum = datum;
    }
    
}

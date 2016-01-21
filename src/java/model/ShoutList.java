
package model;

import java.util.ArrayList;
import java.util.List;

public class ShoutList {
    
    private static List<Shout> shoutList = new ArrayList<Shout>();
    
    public static void add(Shout shout){
        shoutList.add(shout);
    }
    
    public static List<Shout> getShout(){
        return shoutList;
    }
    
     public static Shout getLastShout()
    {
        Shout shout = null;
        
        if (shoutList.size() > 0){
            shout = shoutList.get(shoutList.size() - 1);
        }
        
        return shout;
    }

    public static int getSize()
    {
        return shoutList.size();
    }
    
}

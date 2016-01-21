package service;


import java.util.ArrayList;
import model.Shout;

import javax.ws.rs.*;
import java.util.List;

@Path("shoutbox")
public class ShoutWS
{
    
    List<Shout> shoutList = new ArrayList<Shout>();
    
    @GET
    @Produces("application/json")
    public List<Shout> getShouts()
    {   
        
        return shoutList;
    }

    @PUT
    @Produces("application/json")
    public Shout addShout(Shout shout)
    {
       shoutList.add(shout);
       
       return shout;
    }
}
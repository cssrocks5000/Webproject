package service;

import java.util.HashSet;
import java.util.Set;
import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

@ApplicationPath("resources")
public class ApplicationConfig extends Application {
    private Set<Object> singletons;
    
    public ApplicationConfig(){
            singletons = new HashSet<Object>();
            singletons.add(new ShoutWS());
    }
    
    @Override
    public Set<Class<?>> getClasses(){
        return new HashSet<Class<?>>(); 
    }
    
    @Override
    public Set<Object> getSingletons(){
        return singletons; 
    }
}
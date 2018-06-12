/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author Ankit
 */
@Path("generic")
public class GenericResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of GenericResource
     */
    public GenericResource() {
    }

    /**
     * Retrieves representation of an instance of entity.GenericResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Restaurant> getXml() {
       List<Restaurant> list = new ArrayList<Restaurant>();
    Restaurant rest1 = new Restaurant();
    rest1.setId(1);
    rest1.setName("Avanti");
    rest1.setRating(4);
    rest1.setAddress("123 veterans Pkwy");
    list.add(rest1);
    
      Restaurant rest2 = new Restaurant();
    rest2.setId(2);
    rest2.setName("Olive garden");
    rest2.setRating(5);
    rest2.setAddress("321 locust st");
    list.add(rest2);
    
      Restaurant rest3 = new Restaurant();
    rest3.setId(3);
    rest3.setName("Signature");
    rest3.setRating(4);
    rest3.setAddress("700 N Adelaide St");
    list.add(rest3);
    
      Restaurant rest4 = new Restaurant();
    rest4.setId(4);
    rest4.setName("Aroma");
    rest4.setRating(5);
    rest4.setAddress("325 Vernon Ave");
    list.add(rest4);
    
      Restaurant rest5 = new Restaurant();
    rest5.setId(5);
    rest5.setName("Puran");
    rest5.setRating(5);
    rest5.setAddress("324 East bloomington street");
    list.add(rest5);
    
    return list;
    }

    /**
     * PUT method for updating or creating an instance of GenericResource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }
}

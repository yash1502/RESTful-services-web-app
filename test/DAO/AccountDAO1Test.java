/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Ankit
 */
public class AccountDAO1Test {
    
       

   
    @Test
    public void testCheck() {
        
        boolean x=AccountDAO1.check("yash11","yash11");
		assertEquals(true,x);
                
      //  boolean x1=AccountDAO1.check("shivam","shivam");
	//	assertEquals(true,x1);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
    


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Shivam
 */
public class AccountDAO1 {
    
    public static boolean check(String username, String password) {
		boolean status = false;
		try {
			Connection con = ConnectionProvider.getCon();
			//PreparedStatement ps = con.prepareStatement("select * from ofos.user where username='" + username + "' and password='" + password + "'");
			PreparedStatement ps = con.prepareStatement("select * from ofos.user where username = ? and password = ?");
                        ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();  
			status=rs.next();
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		return status;
	}
    
}

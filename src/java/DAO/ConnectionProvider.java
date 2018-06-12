/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.Provider.CONNECTION_URL;
import static DAO.Provider.DRIVER;
import static DAO.Provider.PASSWORD;
import static DAO.Provider.USERNAME;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Shivam
 */
public class ConnectionProvider {
	private static Connection con = null;
	static {
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static Connection getCon() {
		return con;
	}
}

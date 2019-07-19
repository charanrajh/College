package com.virtusa.collegeapp.helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class MySQLHelper {
	
	private static Connection conn;
	public static Connection getConnection()
	{
		ResourceBundle rb = ResourceBundle.getBundle("com/virtusa/collegeapp/resources/db");
		String userName=rb.getString("user");
		String password=rb.getString("password");
		String url=rb.getString("url");
		String driverName=rb.getString("driver");
		
		try {
			Class.forName(driverName);
			conn=DriverManager.getConnection(url,userName,password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		return conn;
		
	}

}

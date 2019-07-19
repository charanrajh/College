package com.virtusa.collegeapp.dao.implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.virtusa.collegeapp.dao.interfaces.LoginDao;
import com.virtusa.collegeapp.helpers.MySQLHelper;

public class LoginImpl implements LoginDao{

	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private String type = null;
	public static String id = null;

	@Override
	public String checkLogin(String id, String password) throws SQLException {
		/* This method returns the type of the user from the login table */
		conn=MySQLHelper.getConnection();
		try
		{
			pst = conn.prepareStatement("select type from login where id=? and password=?;");
			pst.setString(1, id);
			pst.setString(2, password);
			rs = pst.executeQuery();
			rs.next();
			this.id=id;
			type = rs.getString(1);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}finally {
			conn.close();
		}
		return type;
	}

	@Override
	public boolean checkCredentials(String id, String password) throws SQLException {
		/* This method verifies whether the user is valid or not and returns the boolean value */
		conn=MySQLHelper.getConnection();
		boolean valid = false;
		try {
			pst = conn.prepareStatement("select password from login where id=?;");
			pst.setString(1, id);
			rs = pst.executeQuery();
			rs.next();
			if(rs.getString(1).equals(password))
			{
				valid = true;
			}
		}
		catch(Exception e)
		{
			System.out.println("invalid credentials:"+e.getMessage());
		}
		finally
		{
			conn.close();
		}
		return valid;
	}

}

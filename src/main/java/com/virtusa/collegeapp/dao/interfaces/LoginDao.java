package com.virtusa.collegeapp.dao.interfaces;

import java.sql.SQLException;

public interface LoginDao {
	public String checkLogin(String id, String password) throws SQLException;
	public boolean checkCredentials(String id, String password) throws SQLException; 
}

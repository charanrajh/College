package com.virtusa.collegeapp;


import static org.hamcrest.core.Is.*;
import static org.hamcrest.CoreMatchers.hasItem;
import static org.hamcrest.CoreMatchers.hasItems;
import static org.hamcrest.collection.IsIterableContainingInOrder.*;
import static org.hamcrest.Matchers.containsInAnyOrder;
import static org.junit.Assert.assertThat;

import java.sql.SQLException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.hamcrest.Matcher;
import org.hamcrest.Matchers;
import org.junit.Assert;
import org.junit.Test;

import com.virtusa.collegeapp.dao.implementation.LoginImpl;
import com.virtusa.collegeapp.dao.interfaces.LoginDao;


public class LoginTest {
	@Test
	public void testLogin() {
		LoginDao logindao = new LoginImpl();
		boolean loginStatus=false;
		boolean thrown=false;
		try {
			loginStatus = logindao.checkCredentials("1234", "qwerty");
		} catch (SQLException e) {
			thrown=true;
		}
		Assert.assertTrue("Invalid Password", loginStatus);
	}
	
	
	@Test
	public void testCheckCredentials() {
		LoginDao logindao = new LoginImpl();
		boolean thrown=false;
		String role="";
		try {
			role = logindao.checkLogin("1234", "qwerty");
		} catch (SQLException e) {
			thrown=true;
		}
		List<String> listOfRoles = Arrays.asList("student", "faculty", "admin");
		Assert.assertThat(listOfRoles, contains(role));
	}

}

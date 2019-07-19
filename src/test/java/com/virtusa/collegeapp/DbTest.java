package com.virtusa.collegeapp;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

import com.virtusa.collegeapp.helpers.MySQLHelper;

import junit.framework.Assert;

public class DbTest {
    Connection connection;
    
    @SuppressWarnings("deprecation")
	@Test
    public void isConnectionOpened() {
    	connection=MySQLHelper.getConnection();
    	Assert.assertNotNull("DB connection not created", connection);
    }

    @Test
    public void isConnectionClosed() throws SQLException {
    	connection=MySQLHelper.getConnection();
        connection.close();
        Assert.assertTrue(connection.isClosed());
    }
}

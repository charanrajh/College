package com.virtusa.collegeapp.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.virtusa.collegeapp.helpers.MySQLHelper;
import com.virtusa.collegeapp.model.Applicant;

public class ApplicantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn=null;
	List<Applicant> applicants;

    public ApplicantServlet() {
        super();
    }
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	PrintWriter out = response.getWriter();
		conn = MySQLHelper.getConnection();
		try {
			PreparedStatement pst = conn.prepareStatement("select * from applicant where status='pending';");
			ResultSet rs = pst.executeQuery();
			applicants= new ArrayList<Applicant>();
			Applicant applicant =null;
			while(rs.next())
			{
			applicant = new Applicant(rs.getString("applicant_id"), rs.getString("fname"),rs.getString("lname"),rs.getString("interested_course"),rs.getString("interested_branch"),rs.getInt("x_marks"),rs.getInt("xii_marks"),rs.getString("email"),rs.getLong("phone"), rs.getString("status"));			
			applicants.add(applicant);
			}
			conn.close();
		}
		catch(SQLException e) {
			System.out.println("Application servlet Exception: "+e.getMessage());
		}
		out.println(new Gson().toJson(applicants));
	}

}

package com.virtusa.collegeapp.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.virtusa.collegeapp.dao.implementation.FacultyImpl;
import com.virtusa.collegeapp.dao.implementation.StudentImpl;
import com.virtusa.collegeapp.dao.interfaces.FacultyDao;
import com.virtusa.collegeapp.dao.interfaces.StudentDao;
import com.virtusa.collegeapp.model.Faculty;
import com.virtusa.collegeapp.model.Student;

public class FacultyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public FacultyServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String facultyId=request.getParameter("facultyId");
		response.setContentType("application/json");
		FacultyDao dao = new FacultyImpl();
		Faculty faculty = null;
		try
		{
			faculty=dao.getFacultyDetailsById(facultyId);
		}catch(SQLException e)
		{
			System.out.println("Faculty Servlet Exception: "+e.getMessage());
		}
		out.println(new Gson().toJson(faculty));
	}

}

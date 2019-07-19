package com.virtusa.collegeapp.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.virtusa.collegeapp.dao.implementation.StudentImpl;
import com.virtusa.collegeapp.dao.interfaces.StudentDao;
import com.virtusa.collegeapp.model.Student;

public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public StudentServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String studentId=request.getParameter("studentId");
		response.setContentType("application/json");
		StudentDao dao=new StudentImpl();
		Student student=null;
		try
		{
			student=dao.getStudentDetailsById(studentId);
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		out.println(new Gson().toJson(student));
	}

}

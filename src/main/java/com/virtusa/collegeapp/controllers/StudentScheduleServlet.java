package com.virtusa.collegeapp.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.virtusa.collegeapp.dao.implementation.StudentScheduleImpl;
import com.virtusa.collegeapp.dao.interfaces.StudentScheduleDao;
import com.virtusa.collegeapp.model.StudentSchedule;

public class StudentScheduleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public StudentScheduleServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String studentId=request.getParameter("studentId");
		response.setContentType("application/json");
		StudentScheduleDao dao=new StudentScheduleImpl();
		List<StudentSchedule> studentWeekSchedule=new ArrayList<StudentSchedule>();
		try
		{
			studentWeekSchedule=dao.getStudentSchedule(studentId);
		}catch(SQLException e)
		{
			System.out.println(e.getMessage());
		}
		
		out.println(new Gson().toJson(studentWeekSchedule));
	}

}

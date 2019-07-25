package com.virtusa.collegeapp.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.virtusa.collegeapp.dao.implementation.LoginImpl;
import com.virtusa.collegeapp.dao.interfaces.LoginDao;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session = null;
	
	private static Logger logger=Logger.getLogger(LoginServlet.class);
    static {
    	PropertyConfigurator.configure("log4j.properties");
    	
    }
	
	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		LoginDao user = new LoginImpl();
		String id = request.getParameter("id");
		String password = request.getParameter("pwd");
		try {
			session = request.getSession();
			String type="";
			if(user.checkCredentials(id, password))
			{
				type = user.checkLogin(id, password);
				//System.out.println("type is "+type);
				if(type!=null)
				{
					session.setAttribute("userType", type);
					switch(type)
					{
					case "student":
						session.setAttribute("stud_id", LoginImpl.id);
						request.getRequestDispatcher("studentdashboard.jsp").forward(request, response);
						break;
					case "faculty":
						session.setAttribute("faculty_id", LoginImpl.id);
						request.getRequestDispatcher("facultydashboard.jsp").forward(request, response);
						break;
					case "admin":
						session.setAttribute("admin_id", LoginImpl.id);
						request.getRequestDispatcher("admindashboard.jsp").forward(request, response);
						break;
					case "alumni":
						session.setAttribute("alumni_id", LoginImpl.id);
						request.getRequestDispatcher("alumniDashboard.jsp").forward(request, response);
						break;
					case "applicant":
						session.setAttribute("applicant_id", LoginImpl.id);
						request.getRequestDispatcher("applicant.jsp").forward(request, response);
						break;	
					}
				}
				else
				{
					System.out.println("INVALID");					
				}
			}
			else
			{
				session.setAttribute("cred", "INVALID CREDENTIALS");
				response.sendRedirect("index.jsp");
			}


		}
		catch(NullPointerException e) {
			System.out.println(e.getMessage());
			logger.error("NullPointer Exception"+e.getMessage());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//System.out.println(e.getMessage());
			session.setAttribute("error",e.getMessage());
			response.sendRedirect("error.jsp");
			logger.error("SQL Exception"+e.getMessage());
			//System.getProperty("java.class.path");
		}
	}
}
package com.virtusa.collegeapp.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LogoutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			System.out.println("logout servlet "+session.getAttribute("userType"));
			if(session.getAttribute("userType")!=null)
			{
				session.invalidate();
				response.sendRedirect("index.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}

}

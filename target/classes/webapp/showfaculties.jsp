<%@page import="com.mysql.cj.Session"%>
<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.virtusa.collegeapp.dao.interfaces.*" %>
<%@ page import="com.virtusa.collegeapp.dao.implementation.*" %>
<%@ page import="com.virtusa.collegeapp.model.*" %>
<%@ page import="java.util.*" %>
    <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Admin Dashboard</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="dashboard/css/style.css">
     <link rel="stylesheet" href="dashboard/css/faculty.css">
    <script  src="dashboard/js/table.js" ></script>
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ></script>
    
<style>

</style>

</head>

<body>
    <div class="wrapper">
        <!-- Sidebar  -->
       <%@ include file="adminheader.jsp" %>
        
    

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light ">
                <div class="container-fluid">

        <button type="button" id="sidebarCollapse" class="btn btn-info">
            <i class="fas fa-align-left"></i>
            <span></span>
        </button>
        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-align-justify"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            
              <ul class="nav navbar-nav ml-auto">
                <li >
                    <a  href="#" style="color:#ffffff;"><i class="fas fa-user">&nbsp;</i><% out.println(session.getAttribute("admin_id")); %></a>
                    
                  <a  href="LogoutServlet" style="color:#ffffff; border-left: 1px solid #ffffff;padding-left: 5px;" > 
                   Logout
                   </a>
                </li>          
                        </ul>
                    </div>
                </div>
            </nav>
          
            
          
            <%
            FacultyDao facultyDao = new FacultyImpl();
            List<Faculty> allFaculties = new ArrayList<Faculty>();
            allFaculties = facultyDao.getAllFaculties();
 			
			 %>
			       <strong><h3 class="text-center">Faculties</a></h3></strong>
<br></br>
 
  <div class="table-responsive">

  <table class="table table-bordered">
			<thead>
			  <tr>
			 
			    <th>Faculty ID</th>
			    <th>Name</th>
			    <th>Department</th>
			     <th>Course Name</th>
			    <th>Email</th>
			    <th>Phone</th>
			    <th>Date of Birth</th>
			    <th>Qualification</th>
			    <th>Experience</th>
			    
    
	      </tr>
	      
<%
 Iterator<Faculty> iterator = allFaculties.iterator();  // Iterator interface
 
 while(iterator.hasNext())  // iterate through all the data until the last record
 {
	 Faculty faculty = iterator.next(); //assign individual employee record to the employee class object
 %>
	 <tr><td><%=faculty.getFacultyId()%></td>
	 <td><%=faculty.getFacultyName()%></td>
	 <td><%=faculty.getFacultyDeptnName()%></td>
	 <td><%=faculty.getFacultyCourseName()%></td>
	 <td><%=faculty.getFacultyEmail()%></td>
	  <td><%=faculty.getFacultyPhone()%></td>
	  <td><%=faculty.getFacultyDob()%></td>
	  <td><%=faculty.getFacultyQualf()%></td>
	  <td><%=faculty.getFacultyExp()%></td>
	  
	  
 
 </tr>
 <%
}
%>
</table>
</div>  
           

            <!-- <table class="table table-hover" id="showData"> -->
            
            <!-- <tbody id="showData"></tbody> -->
            <!--   </table> -->
            <div class="line"></div>

                    </div>
    </div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>
      <script type="text/javascript" src="dashboard/js/toogle.js"> </script>
      <script src="js/preventBack.js" type="text/javascript"></script>
</body>

</html>


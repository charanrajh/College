<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@page import="com.virtusa.collegeapp.model.Applicant"%>
<%@page import="com.virtusa.collegeapp.dao.implementation.ApplicantImpl"%>
<%@page import="com.virtusa.collegeapp.dao.interfaces.ApplicantDao"%>

  <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Applicant Dashboard</title>

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
     
        
    

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light ">
                <div class="container-fluid">

        
        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-align-justify"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            
              <ul class="nav navbar-nav ml-auto">
                <li >
                    <a  href="#" style="color:#ffffff;"><i class="fas fa-user">&nbsp;</i></a>
                    
                  <a  href="LogoutServlet" style="color:#ffffff; border-left: 1px solid #ffffff;padding-left: 5px;" > 
                   Logout
                   </a>
                </li>          
                        </ul>
                    </div>
                </div>
            </nav>
          
            
          <%
          
	String applicantId =(String) session.getAttribute("applicant_id"); //gets id of the logged in applicant
	ApplicantDao applicantDao = new ApplicantImpl();
	Applicant applicant = new Applicant();
	applicant = applicantDao.getApplicantDetailsById(applicantId);
	

	
	%>
      <strong><h3 class="text-center">Application Status</a></h3></strong>
<br></br>
 
  <div class="table-responsive">

  <table class="table table-bordered">
			<thead>
			  <tr>
			 
			    <th>Applicant ID</th>
			    <th>First Name</th>
			     <th>First Name</th>
			    <th>Branch</th>
			     <th>Course</th>
			    <th>Email</th>
			    <th>Phone</th>
			    <th>Status</th>
	      </tr>
		
		<tr>
		<td><%out.println((applicant.getApplicant_id()));%></td> 
		<td><%out.println((applicant.getFname()));%></td> 
		<td><%out.println((applicant.getLname()));%></td> 
		<td><%out.println((applicant.getBranch()));%></td> 
		<td><%out.println((applicant.getCourse()));%></td> 
		<td><%out.println((applicant.getEmail()));%></td> 
		<td><%out.println((applicant.getPhone()));%></td> 
		<td><%out.println((applicant.getStatus()));%></td> 
		
		
		
		</tr>
	
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
</body>

</html>


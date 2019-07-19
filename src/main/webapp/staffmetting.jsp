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

    <title>Faculty Dashboard</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="dashboard/css/style.css">
   <link rel="stylesheet" href="dashboard/css/faculty.css">
    


</head>

<body>
    <div class="wrapper">
        <!-- Sidebar  -->
       
	<%@ include file="facultyheader.jsp" %>
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
                    <a  href="#" style="color:#ffffff;"><i class="fas fa-user">&nbsp;</i> Username </a>
                    
                  <a  href="#" style="color:#ffffff; border-left: 1px solid #ffffff;padding-left: 5px;"> 
                   Logout
                   </a>
                </li>          
                        </ul>
                        
                    </div>
                </div>
            </nav>
            <%
            List<FacultyMeeting> facultyMeetingSchedule = new ArrayList<FacultyMeeting>();
            facultyMeetingSchedule = (List) session.getAttribute("facultyMeetingSchedule");
 			
			 %>
<strong><h3 class="text-center">Meeting Schedule</a></h3></strong>
<br></br>
 
  <div class="table-responsive">

  <table class="table table-bordered">
			<thead>
			  <tr>
			 
			    <th>Date</th>
			    <th>Venue</th>
			    <th>Start Time</th>
			     <th>End Time</th>
			     <th>Meeting Information</th>
    
	      </tr>
	      
<%
 Iterator<FacultyMeeting> iterator = facultyMeetingSchedule.iterator();  // Iterator interface
 
 while(iterator.hasNext())  // iterate through all the data until the last record
 {
	 FacultyMeeting facultyMeetingDetails = iterator.next(); //assign individual employee record to the employee class object
 %>
	 <tr><td><%=facultyMeetingDetails.getMeetingDate()%></td>
	 <td><%=facultyMeetingDetails.getStartTime()%></td>
	 <td><%=facultyMeetingDetails.getEndTime()%></td>
	 <td><%=facultyMeetingDetails.getMeetingVenue()%></td>
	 <td><%=facultyMeetingDetails.getMeetingInfo()%></td>
	  
 
 </tr>
 <%
}
%>
</table>
</div>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>
    
    <!-- Font Awesome JS -->
    <script  src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ></script>
    <script  src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ></script>
      <script type="text/javascript" src="dashboard/js/toogle.js"> </script>
<script src="js/preventBack.js" type="text/javascript"></script>s
 
</body>

</html>
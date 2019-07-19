<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.virtusa.collegeapp.dao.interfaces.*" %>
<%@ page import="com.virtusa.collegeapp.dao.implementation.*" %>
<%@ page import="com.virtusa.collegeapp.model.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Student Dashboard</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="dashboard/css/style.css">
      <link rel="stylesheet" href="dashboard/css/faculty.css">

    <!-- Font Awesome JS -->
    <script  src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ></script>
    <script  src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ></script>
<style>
.offset-div{
left:25%
}
</style>
</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
       
	<%@ include file="dashboard/dashboardheader.jsp" %>
	<%
	System.out.println("dash bord "+session.getAttribute("userType"));
	String studentId =(String) session.getAttribute("stud_id"); //gets id of the logged in student
	StudentDao studentDao = new StudentImpl();
	Student student = new Student();
	student = studentDao.getStudentDetailsById(studentId);
	
	StudentScheduleDao studentScheduleDao = new StudentScheduleImpl(); 
	List<StudentSchedule> studentWeekSchedule = new ArrayList<StudentSchedule>();
	studentWeekSchedule = studentScheduleDao.getStudentSchedule(studentId);
	session.setAttribute("studentWeekScheduleArray", studentWeekSchedule);
	
	%>
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
                    <a  href="#" style="color:#ffffff;"><i class="fas fa-user">&nbsp;</i><% out.println(" "+student.getStdName());%></a>
                    
                  <a  href="LogoutServlet" style="color:#ffffff; border-left: 1px solid #ffffff;padding-left: 5px;" > 
                   Logout
                   </a>
                </li>          
                        </ul>
                    </div>
                </div>
            </nav>
	<div class="content-div">
<h2 class="text-center">Profile</h2>
           <div class="col-md-6 offset-div">
	          <form >
	           <div class="form-group ">
                    <label for="stdId"> ID</label>
                    <input type="text" class="form-control" id="stdId" readonly="readonly" value=<%out.println(student.getStdId());%>>
                </div>
                 <div class="form-group ">
                    <label for="stdName"> Name</label>
                    <input type="text" class="form-control" id="stdName" readonly="readonly" value=<% session.setAttribute("stud_name", student.getStdName());out.println(student.getStdName());%>>
                </div>
                    <div class="form-group ">
                    <label for="stdDeptName">Department Name</label>
                    <input type="text" class="form-control" id="stdDeptName" readonly="readonly" value=<%out.println(student.getStdDeptName());%>>
                </div>
                <div class="form-group ">
                    <label for="stdSem">Semester</label>
                    <input type="number" class="form-control" id="stdSem" readonly="readonly" value=<%out.println(student.getStdSem());%>>
                </div>
                <div class="form-group ">
                    <label for="stdCourseName">Course</label>
                    <input type="text" class="form-control" id="stdCourseName" readonly="readonly" value=<%out.println(student.getStdCourseName());%>>
                </div>
                <div class="form-group ">
                    <label for="stdEmail">Email</label>
                    <input type="email" class="form-control" id="stdEmail" readonly="readonly" value=<%out.println(student.getStdEmail());%>>
                </div>
                <div class="form-group ">
                    <label for="stdPhone">Phone</label>
                    <input type="tel" class="form-control" id="stdPhone" readonly="readonly" value=<%out.println(student.getStdPhone());%>>
                </div>
                <div class="form-group ">
                    <label for="stdDOB">Date of Birth</label>
                    <input type="date" class="form-control" id="stdDOB" readonly="readonly" value=<%out.println(student.getStdDOB());%>>
                </div>
	          
	          </form>
           
           </div>            
            <div class="line"></div>
</div>
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
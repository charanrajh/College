<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.virtusa.collegeapp.dao.implementation.*, com.virtusa.collegeapp.model.*, com.virtusa.collegeapp.dao.interfaces.*, java.util.*" %>


  <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Alumni Dashboard</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="dashboard/css/style.css">
     <link rel="stylesheet" href="dashboard/css/faculty.css">
  
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ></script>
    
<style>
.search-container{
margin-left: 10%;
}
.form-control{
width: 20%;
}
</style>

</head>

<body>
    <div class="wrapper">
         
	 
       

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
                    <a  href="#" style="color:#ffffff;"><i class="fas fa-user">&nbsp;</i><% out.println(session.getAttribute("alumni_id")); %></a>
                    
                  <a  href="LogoutServlet" style="color:#ffffff; border-left: 1px solid #ffffff;padding-left: 5px;" > 
                   Logout
                   </a>
                </li>          
                        </ul>
                    </div>
                </div>
            </nav>
          
            
   
    <h3 class="text-center">  <strong>Alumni Page</strong></h3>
    
    
   
   <div class="search-container">
 
    <form action="alumniDashboard.jsp" method="post" "form-inline" >
      <input type="text" placeholder="Search.." name="search" class="form-control">
     &nbsp;&nbsp;&nbsp; <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
   
<br></br>
 
  <div class="table-responsive">
<%
if(request.getParameter("search")!=null){
	System.out.println(request.getParameter("search"));
String name = request.getParameter("search").toString();
AlumniDao alumniDao = new AlumniImpl();
List<Alumni> matchedAlumni = new ArrayList<Alumni>();
matchedAlumni = alumniDao.getAlumniDetails(name);
%>
  <strong><h3 class="text-center">Search results</a></h3></strong>
<br></br>
 
  <div class="table-responsive">

  <table class="table table-bordered">
			<thead>
			  <tr>
			 
			    <th>Alumni ID</th>
			    <th>Name</th>
			    <th>Branch</th>
			     <th>Course</th>
			     <th>Batch</th>
			    <th>Email</th>
			    <th>Phone</th>
	      </tr>
	      
<%
 Iterator<Alumni> iterator = matchedAlumni.iterator();  // Iterator interface
 
 while(iterator.hasNext())  // iterate through all the data until the last record
 {
	 Alumni alumni = iterator.next(); //assign individual employee record to the employee class object
 %>
	 <tr><td><%=alumni.getId()%></td>
	 <td><%=alumni.getName()%></td>
	 <td><%=alumni.getBranch()%></td>
	 <td><%=alumni.getCourse()%></td>
	 <td><%=alumni.getYop()%></td>
	  <td><%=alumni.getEmail()%></td>
	  <td><%=alumni.getPhone()%></td>
	  
	  
 
 </tr>
 <%
}}
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
    <script src ="alumniSearch.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>
      <script type="text/javascript" src="dashboard/js/toogle.js"> </script>
</body>

</html>


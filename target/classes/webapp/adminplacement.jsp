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
                    <a  href="#" style="color:#ffffff;"><i class="fas fa-user">&nbsp;</i> <% out.println(session.getAttribute("admin_id")); %> </a>
                    
                  <a  href="LogoutServlet" style="color:#ffffff; border-left: 1px solid #ffffff;padding-left: 5px;" > 
                   Logout
                   </a>
                </li>          
                        </ul>
                    </div>
                </div>
            </nav>
          <div class="content-div">
            <h2 class="text-center">Placement Update</h2>
           <div class="col-md-6 offset-div">
	          <form action="adminplacement.jsp" method="post">
	           <div class="form-group ">
                    <label for="company"> Company Name</label>
                    <input type="text" class="form-control" id="company" name="company">
                </div>
                 <div class="form-group ">
                    <label for="evenDate"> Date</label>
                    <input type="date" class="form-control" id="eventDate" name="eventDate" placeholder="YYYY-MM-DD"
                     >
                </div>
               
                <div class="form-group ">
                 <button type="submit" class="btn btn-primary" >Submit</button>
                </div>
              
                
                 
	          
	          </form>
           
           </div>  
			</div>
           <% if(request.getParameter("company")!=null)
           {	String company = request.getParameter("company");
            String dateparam = request.getParameter("eventDate");
            AdminDao adminDao = new AdminImpl();
            boolean status = adminDao.updatePlacementInfo(company,dateparam);
            if(status)
            { %>
			
			<script type="text/javascript">
			alert("Updated!");
			</script>
       <%}
            
        }
       
	%>

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


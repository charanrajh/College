<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.virtusa.collegeapp.model.Applicant, java.lang.*" %>
<%@ page import="com.virtusa.collegeapp.dao.implementation.ApplicantImpl"%>
<%@ page import="com.virtusa.collegeapp.dao.interfaces.ApplicantDao"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Admission </title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>

        <!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="css/animate.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">	
        <!-- THEME STYLES -->
        <link href="css/layout.min.css" rel="stylesheet" type="text/css"/>

  

        <style type="text/css">
.admission-div{
left:30%;
}
 </style>

    </head>

        <!-- END HEAD -->

    <!-- BODY -->
    <body>

        <!--========== HEADER ==========-->
            
   <%@ include file="header.jsp" %>
        <!--========== END HEADER ==========-->
            
        <div class="col-12 banner">
                <span class="btn btn-info btn-md rotate AdEnquiry"><a style="color: white;" href="#"><i class="fa fa-file-text"></i> Admission Enquiry</a></span>
                 <img class="img-responsive" src="img/Admission-banner.jpg"> 
                </div> 


   <div class="section-seperator " >
                         <div class="content-md container">
                                    <div class="row ">
                                
                                   
                                 <h3 class="text-center">Apply for Admission</h3>
                    

    <div class="col-md-5 col-sm-7 admission-div">
        <form method="post">

            <div class="row ">
                <div class="col-lg-6 col-md-6 col-sm-6 " style="padding-bottom: 10px;">
                  <label for="fname"> First Name* </label>
                    <input class="form-control" name="fname" placeholder="First Name " type="text" required id="fname" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                <label for="lname"> Last Name* </label>
                    <input class="form-control" name="lname" placeholder="Last Name " type="text" required id="lname" />
                </div>
            </div>
   			<div class="margin-b-10">
            <label for="course"> Interested Course* </label>
                <select class="form-control" id="course" name="course">
                      <option hidden="hidden" readonly="readonly">select</option>
                     <option>BE</option>
            <option>BTECH</option>
            <option>ME</option>
                 
                </select>
                
              

            </div>
          
            <div class="margin-b-10">
            <label for="branch"> Interested Branch* </label>
                <select class="form-control" id="branch" name="branch">
                      <option hidden="hidden" readonly="readonly">select</option>
                  <option>Aeronautical Engineering</option>
                  <option>Information Technology</option>
                  <option>Communication Systems</option>
                  <option>Computer Science and Engineering</option>
                 
                </select>

            </div>
            <div class="margin-b-10">
             <label for="ten"> 10th Marks* </label>
                <input type="text" class="form-control" placeholder="x% " id="ten" name="ten" required>
            </div>
            <div class="margin-b-10">
             <label for="twelve"> 12th Marks* </label>
                <input type="text" class="form-control" placeholder="x% " id="twelve" name="twelve" required>
            </div>
            <div class="margin-b-10">
             <label for="email"> Email* </label>
                <input type="email" class="form-control" placeholder="email " id="email" name="email" required>
            </div>
          <div class="margin-b-10">
             <label for="mobile"> mobile* </label>
                <input type="text" class="form-control" placeholder="mobile " id="mobile" name="mobile" required>
            </div>
            <div class="margin-b-10">
             <label for="password"> Password* </label>
                <input type="password" class="form-control" placeholder="password " id="password" name="password" required>
            </div>
            <button type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">Submit</button>
            <%
            
            //int ten = Integer.parseInt(request.getParameter("ten").toString());	
            //int twelve = Integer.parseInt(request.getParameter("twelve").toString());
            //long mobile = Long.parseLong(request.getParameter("mobile").toString());
		
            if(request.getParameter("fname")!=null)
			{   
            	int ten = Integer.parseInt(request.getParameter("ten").toString());	
                int twelve = Integer.parseInt(request.getParameter("twelve").toString());
                long mobile = Long.parseLong(request.getParameter("mobile").toString());
            	Applicant applicant = new Applicant(request.getParameter("fname"),request.getParameter("lname"),request.getParameter("course"),
            		request.getParameter("branch"),ten,twelve,
            		request.getParameter("email"),mobile,request.getParameter("password")
            		);
            	int temp = new Random().nextInt(100000);
            	String id = Integer.toString(temp);
            	ApplicantDao applicantdao = new ApplicantImpl();
				boolean status = applicantdao.insertApplicant(applicant,id);
				//session.setAttribute("myId",id);
				//System.out.println(status);	            	
            
            if(status)
            { %>
			
			<script type="text/javascript">
			alert("Successfully Applied! \n YOUR ID: "+<%=id%>);
			</script>
       <%}
            
        }
       
	%>
        </form>
    </div>
</div>
<!--// end row -->
</div>

  
</div>
  <%@ include file="registrationpanel.jsp" %>  	
                 <%@ include file="loginPanel.jsp" %>  	
        <!--========== FOOTER ==========-->
<%@ include file="footer.jsp" %>
        <!-- Back To Top -->
       
        <!-- CORE PLUGINS -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

    


    </body>
    <!-- END BODY -->
</html>
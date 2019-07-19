<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.virtusa.collegeapp.helpers.MySQLHelper" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.virtusa.collegeapp.dao.interfaces.*" %>
<%@ page import="com.virtusa.collegeapp.dao.implementation.*" %>
<%@ page import="com.virtusa.collegeapp.model.*" %>
    
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>College Application </title>
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

    </head>

        <!-- END HEAD -->

    <!-- BODY -->
    <body>

        <!--========== HEADER ==========-->
           
  <%@ include file="header.jsp" %>  
        <!--========== END HEADER ==========-->
            
        <div class="col-12 banner">
                <span class="btn btn-info btn-md rotate AdEnquiry"><a style="color: white;" href="admission.jsp"><i class="fa fa-file-text"></i> Admission Enquiry</a></span>
                 <img class="img-responsive" src="img/feedback.jpg"> 
                <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3890.039381750631!2d80.22483591430323!3d12.840731721211872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a525b1f7a88c597%3A0xf13aa4988038ba38!2sVirtusa+Chennai+Navalur!5e0!3m2!1sen!2sin!4v1562091762033!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
       -->     </div> 

              
                       
                                   
                                     <div class="section-seperator " >
                         <div class="content-md container">
                                    <div class="row ">
                                        <div class="col-sm-6" >
                                          <h1 class="h_dec2"  >Feedback</h1> 
                 
                    <% FeedbackDao feedback = new FeedbackImpl();
                     List<Feedback> feedbackList = feedback.getFeedbackDetailsById();
                 %>
                                  
                   <h4 class="h_dec2" ><% out.println(feedbackList.get(0).getUser_name()); %>
                    </h4>
                    <p>
                    <% out.println(feedbackList.get(0).getComment()); %>
                    </p>
                   
                     <h4 class="h_dec2" ><% out.println(feedbackList.get(1).getUser_name()); %>
                    </h4>
                    <p>
                    <% out.println(feedbackList.get(1).getComment()); %>
                    </p>
                                        </div>
                                   
                                    <!--// end row -->
     
    
          <div class="col-md-5 col-sm-7">
              <form>

 


                  <div class="margin-b-10">
                      <input class="form-control" name="user_name" placeholder="Name *" id="user_name"  type="text" required  />
                  </div>
                  <div class="margin-b-20">
                      <textarea class="form-control" rows="5"  name="comment" id="comment" placeholder="Message"></textarea>
                  </div>
                  <button type="submit" onclick="myFunction1()" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">Submit</button>
              </form>
             <%   
                      if(request.getParameter("user_name")!=null)
                      {
                          feedback = new FeedbackImpl();
                          boolean insertStatus= feedback.insertFeedback(request.getParameter("user_name"), request.getParameter("comment"));
                      }
              %>
          </div>
      </div>
      <!--// end row -->
     </div>
    
</div>
     
                   
          <%@ include file="registrationpanel.jsp" %>  	        
               <%@ include file="loginPanel.jsp" %>  	
        <!--========== FOOTER ==========-->
         <%@ include file="footer.jsp" %>  

  
      
     
        <script src="js/jquery.min.js" type="text/javascript"></script>
     
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        function myFunction1() {
              alert("feed back sent done!");
            }

</script>
    </body>
    <!-- END BODY -->
</html>
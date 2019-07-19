<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
	<html  >
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Courses</title>
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
     
     .thead-dark{
    background: #054e9d;
    color: #ffffff;
}
th{
    border: 2px solid #fff;
    text-align: center;
}
td{
    background: beige; 
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
                <span class="btn btn-info btn-md rotate AdEnquiry"><a style="color: white;" href="admission.jsp"><i class="fa fa-file-text"></i> Admission Enquiry</a></span>
                 <img class="img-responsive" src="img/courses-banner.jpg"> 
                <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3890.039381750631!2d80.22483591430323!3d12.840731721211872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a525b1f7a88c597%3A0xf13aa4988038ba38!2sVirtusa+Chennai+Navalur!5e0!3m2!1sen!2sin!4v1562091762033!5m2!1sen!2sin" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
       -->     </div> 
       <div class="section-seperator " >
        <div class="content-md container">
       <table class="table">
        <thead class="thead-dark">
          <tr>
        
            <th scope="col">UG Courses (B.E.)</th>
            <th scope="col">UG Courses (B.Tech.)</th>
            <th scope="col">PG Courses (M.E.)</th>
          </tr>
        </thead>
        <tbody>
          <tr>
           
            <td>Aeronautical Engineering</td>
            <td>Information Technology</td>
            <td>Communication Systems</td>
          </tr>
          <tr>
            
            <td>Automobile Engineering</td>
            <td>Fashion Technology</td>
            <td>Computer Science and Engineering</td>
          </tr>
          <tr>
           
            <td>Civil Engineering</td>
            <td>Computer Science and Engineering</td>
            <td>Manufacturing Engineering</td>
          </tr>
          <tr>
           
            <td>Computer Science and Engineering</td>
            <td>Mechanical Engineering</td>
            <td>Power Electronics and Drives</td>
          </tr>
          <tr>
           
            <td>Electrical and Electronics Engineering</td>
           
          </tr>
          <tr>
           
            <td>Mechanical Engineering</td>
          
          </tr>
        </tbody>
      </table>
      
     
                
</div>
</div>
    <%@ include file="loginPanel.jsp" %>  	
	  <%@ include file="registrationpanel.jsp" %>  	
        <!--========== FOOTER ==========-->
        <%@ include file="footer.jsp" %>
      
        <!--========== END FOOTER ==========-->

 
      
        <!-- CORE PLUGINS -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

    


    </body>
    <!-- END BODY -->
</html>
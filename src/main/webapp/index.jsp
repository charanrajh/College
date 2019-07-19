<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
	<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>Virtusa</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>
        <!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="css/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/swiper.min.css" rel="stylesheet" type="text/css"/>
        <!-- THEME STYLES -->
        <link href="css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
      <!--   <link rel="shortcut icon" href="favicon.ico"/> -->

        <style type="text/css">


.footer{
margin-top:25%;
}


 </style>

    </head>

        <!-- END HEAD -->

    <!-- BODY -->
    <body>

        <!--========== HEADER ==========-->
            
 <%@ include file="header.jsp" %>  
 <% if(session.getAttribute("cred")!=null)
	 {
		%>
		<h1><% out.println(session.getAttribute("cred")); session.invalidate();%></h1>
		<%
	 }
	 %>
        <!--========== END HEADER ==========-->
            <div class="col-12 banner">
                    <span class="btn btn-info btn-md rotate AdEnquiry"><a style="color: white;" href="admission.jsp">
                      <i class="fa fa-file-text"></i> Admission Enquiry</a></span>
                <img class="img-responsive" src="img/38371.jpg">
            </div>
            <!-- <div class="intro-text type1" style="padding: 0px;">
                    <div class="container"> 
                        <div class="dt-sc-hr-invisible-very-small"></div>
                    </div>
                    <div class="dt-sc-hr-invisible-very-small"></div>
                </div> -->


                <div class="col-12 content">
                <div class="col-md-6">
                    <h3 class="head">Welcome to Virtusa</h3>
                    
                    <p class="desc">
                        
                            Virtusa College of Engineering
                            established in the year 1996 is one of the Top Private Engineering
                            Colleges in Chennai and is a vital cog of wheels in Virusa Group of Institutions.
                            Spread across 12 acres of calm and convenient campus in Navallur, 
                            Bhopal, Virtusa believes in imparting education beyond engineering. 
                            This prestigious Institute of Engineering in Chennai provides its students 
                            with state-of-art infrastructure thereby creating an environment for creative
                            learning and overall development.
                    </p>
                </div>
                <div class="col-md-6">
                        <h3 class="head">News and Updates</h3>
                        <marquee direction="up" scrollamount="3px;" height="300px;" onmouseover="this.stop()" onmouseout="this.start()">
                                <table id="ContentPlaceHolder1_Repeater1" cellspacing="0" style="border-collapse:collapse;">
             <tbody><tr>
                 <td>
                        <a href="#"><span> &gt; Virtusa Group Annual Two Day Techno-Cultural event commenced.
                            on 18th March, 2019 </span><br>
                            <img src="img/1.jpg" alt="ss"></a>
                                                           </td>
             </tr><tr>
                 <td>
                        <a href="#"><span> &gt;Virtusa Group Annual Three Day Techno-Cultural event commenced on 18th March, 2019
                            </span>   <img  src="img/2.jpg" width="60%" alt="sbs"></a>                  </td>
             </tr><tr>
                 <td>    </td>
             </tr><tr>
                 <td>
                        <a href="#"> <span > &gt; Virtusa Group Annual Two Day Techno-Cultural event commenced on 18th March, 2019
                            </span>      <img  src="img/2.jpg" width="60%"  alt="www"></a>                              </td>
             </tr>
         </tbody></table>
         
                           
                             
                         </marquee>
                </div>
                </div>
               
         <%@ include file="loginPanel.jsp" %>  	
          <%@ include file="registrationpanel.jsp" %>  	
               
        <!--========== FOOTER ==========-->
<%@ include file="footer.jsp" %>  
       </body>
   
     
        <!-- CORE PLUGINS -->
        <script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/myscript.js" type="text/javascript"></script>
     
		
    


   
    <!-- END BODY -->
</html>
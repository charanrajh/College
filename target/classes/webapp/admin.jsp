<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <link href="css/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/swiper.min.css" rel="stylesheet" type="text/css"/>
          <link href="css/admin.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
      <!--   <link rel="shortcut icon" href="favicon.ico"/> -->

        <style type="text/css">
    .header{
        margin-top: 0px;
        background-image: url("img/header.jpg");
    }
    .bg-color-white{
        background: #ffffff;
    }
    .navbar{
    background: #054e9d;
    border-radius: 0px;
    }
    .navbar-inverse .navbar-nav>li>a {
        color: #ffffff;
    }
    .navbar-inverse .navbar-nav>li>a:hover {
        background: rgb(245, 147, 77);
    }
    #body_div {
        top: 0;
        position: relative;
    
    } 
.banner{
    border-bottom: solid 5px #2c3e50;
}
        .mysocial{
            display: -webkit-inline-box;
        }
        .bg-color-sky-light{margin-top: 5px;}
        
        .bottom {
            padding-top: 20px;
            padding-bottom: 0px;
        }
        h1, h2, h3, h4, h5, h6 {
        
            line-height: 1.4;
        }
        .header_top{
            background: whitesmoke;
                    border-bottom: 1px solid #cfd4de;
                    height: 45px;
        }
        /* right header */
        .right_header{
        margin-top: 5px;
        }
        /*admission button start*/
        .btn-admission{
            background: #054e9d;
            border: 0px;
            border-radius: 30px;
            color: #fff;
            float:right;
            margin: 5px;
            padding-bottom: 4px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 4px;
            height: 25px;
          
            cursor: pointer; 
        }
       .btn-admission:hover{
            background: rgb(245, 147, 77);
            border: 0px;
            float:right;
            border-radius: 30px;
            color: #fff;
            padding-bottom: 4px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 4px;
            height: 25px;
            cursor: pointer;
            
        }
        /*admission button end*/
          /*heading */
          .main-head{
            line-height: 70px;
            color: #054e9d;
            margin-top: 0px;
            font-family: sans-serif;
        }
        
        /*heading end*/
        /* footer */
        .footer{
            background: rgb(6, 15, 36);
            height: 50px;
          
            
        }
        .bottom{
            background: rgb(6, 15, 36);
            height: 50px;
        }
        .intro-text.type1:before {
                border-left: 13px solid transparent;
                border-right: 13px solid transparent;
                border-top: 13px solid #2c3e50;
                content: "";
                left: 0;
                margin: auto;
                position: absolute;
                right: 0;
                bottom: -12px;
                width: 0;
            }
            .head{
                text-align: center;
                font-weight: 500;
                color: rgba(0, 0, 0, 0.699);
                font-family: sans-serif;
                /* border-bottom: 2px dashed #2c3e50; */
            }
            .desc{
                text-align: justify;
                font-family: sans-serif;
                font-size: 16px;
                padding: 5px;
                margin: 15px;
                color: rgba(0, 0, 0, 0.699);
            }
            span{
                color: #2c3e50;
                font-size: 16px;
            }
            /* login button */
            .btn-submit{
            background: #054e9d;
            border: 0px;
            border-radius: 30px;
            color: #fff;
            margin: 5px;
            padding-bottom: 4px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 4px;
            height: 25px;
          
            cursor: pointer; 
        }
       .btn-submit:hover{
            background: rgb(245, 147, 77);
            border: 0px;
         
            border-radius: 30px;
            color: #fff;
            padding-bottom: 4px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 4px;
            height: 25px;
            cursor: pointer;
        }
        .modal-content{
            border-radius: 2px;
        }
        marquee{
            border-bottom: 1px dashed #2c3e50;
        }
        .form-control {
    height: 50px;
    font-size: 14px;
    font-weight: 400;
    color: #054e9d;
    border: 9px solid #054e9d;
    background: #fcf8f8;
    border: none;
    box-shadow: none;
    border-radius: 0;
    padding-left: 15px;
}

	.btn-base-bg {
	   
	    background: #054e9d;
	}
	.btn-base-bg:hover {
	   
	   background: rgb(245, 147, 77);
	}
	a{
	    cursor: pointer;
	}
	a:hover{
	    cursor: pointer;
	}
	.login-box{
	margin:10px;
	
	}
	
	.form-control {
	border: 1px solid #054e9d;
	border-radius: 5px;
	align-items: center;
	
	}
	.login-div{
	left:40%;
	}
	.header-admin{
	background:  #2f3740;
	height: 50px;
	}
	.std-content{
	left:40%;
	}
 </style>

    </head>

        <!-- END HEAD -->

    <!-- BODY -->
    <body>

        <!--========== HEADER ==========-->
            
 
        <!--========== END HEADER ==========-->
            
     <header class="header-admin">
      <h4 class="text-center" style="color: #fff; line-height:50px;">Virtusa College of Engineering</h4>
     </header>
       <div class="section-seperator " >
        <div class="content-md container login-box">
        <div class="col-md-3 ">
        
         <div id="mySidenav" class="sidenav ">
        
            <ul class="admin-ul">
                <li class="admin-li">  <a href="admin.html" >Profile</a> </li>
                <li class="admin-li"> <a href="#">Check Assignment</a> </li>
                <li class="admin-li">  <a href="#">Class</a> </li>
                <li class="admin-li">  <a href="#">Result</a> </li>
            </ul>
        </div>
        </div>
 		 </div>
 		 
  <div class="col-md-5 col-sm-7 std-content">
   <div class="panel panel-default">
    <div class="panel-heading">Student Profile</div>
  </div>
     <form>
         <div class="row">
           <div class="form-group ">
                    <label for="stdId">Student ID:</label>
                    <input type="text" class="form-control" id="stdId" readonly="readonly" value=<%out.println(session.getAttribute("studId"));%>>
                </div>
                <div class="form-group ">
                    <label for="stdName">Student Name:</label>
                    <input type="text" class="form-control" id="stdName" readonly="readonly" value=<%out.println(session.getAttribute("studName"));%>>
                </div>
                <div class="form-group ">
                    <label for="stdDeptName">Department Name:</label>
                    <input type="text" class="form-control" id="stdDeptName" readonly="readonly" value=<%out.println(session.getAttribute("studDeptName"));%>>
                </div>
                <div class="form-group ">
                    <label for="stdSem">Semester:</label>
                    <input type="number" class="form-control" id="stdSem" readonly="readonly" value=<%out.println(session.getAttribute("studSem"));%>>
                </div>
                <div class="form-group ">
                    <label for="stdCourseName">Course:</label>
                    <input type="text" class="form-control" id="stdCourseName" readonly="readonly" value=<%out.println(session.getAttribute("studCourse"));%>>
                </div>
                <div class="form-group ">
                    <label for="stdEmail">Email:</label>
                    <input type="email" class="form-control" id="stdEmail" readonly="readonly" value=<%out.println(session.getAttribute("studEmail"));%>>
                </div>
                <div class="form-group ">
                    <label for="stdPhone">Phone:</label>
                    <input type="tel" class="form-control" id="stdPhone" readonly="readonly" value=<%out.println(session.getAttribute("studPhone"));%>>
                </div>
                <div class="form-group ">
                    <label for="stdDOB">Date of Birth:</label>
                    <input type="text" class="form-control" id="stdDOB" readonly="readonly" value=<%out.println(session.getAttribute("studDob"));%>>
                </div>
             </div>
             </form>
</div>
</div>

             
        <!--========== FOOTER ==========-->

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>
        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>

    


    </body>
    <!-- END BODY -->
</html>
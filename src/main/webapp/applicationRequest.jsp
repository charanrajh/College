<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.ResourceBundle"%>
<%@ page import="com.virtusa.collegeapp.helpers.MySQLHelper"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.util.*"%>
<%@ page import="com.virtusa.collegeapp.model.Applicant"%>
<%@ page import="com.google.gson.Gson"%>
<%@page import="com.virtusa.collegeapp.dao.interfaces.*" %>
<%@page import="com.virtusa.collegeapp.dao.implementation.*" %>
<html>
<head>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

 

<style>
#display {
    display: flex;
    margin-left:40%;
    margin-top:6%;
}
table,th,td{
border:2px solid black;
  text-align: center;

 


}

 

 

</style>
</head>

 

<body>
    <div id="display">

 


    </div>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

 

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="heading"></h4>
                </div>
                <div class="modal-body">

 

                    <form onsubmit="return false" >
                        <div class="form-group ">
                            <label for="applicant_id">ID<label> <input
                                    type="text" class="form-control" id="applicant_id">
                        </div>
                        <div class="form-group ">
                            <label for="fname">First Name</label> <input type="text"
                                class="form-control" id="fname">
                        </div>
                        <div class="form-group">
                            <label for="lname">Last Name</label> <input type="text"
                                class="form-control" id="lname">
                        </div>
                        <div class="form-group">
                            <label for="interested_course">Course</label> <input type="text"
                                class="form-control" id="interested_course">
                        </div>
                        <div class="form-group ">
                            <label for="interested_branch">Branch</label> <input type="text"
                                class="form-control" id="interested_branch">
                        </div>

 

                        <div class="form-group ">
                            <label for="x_marks">10<sup>th</sup> marks
                            </label> <input type="text" class="form-control" id="x_marks">
                        </div>

 

                        <div class="form-group ">
                            <label for="xii_marks">12<sup>th</sup> marks
                            </label> <input type="text" class="form-control" id="xii_marks">
                        </div>
                        <div class="form-group ">
                            <label for="email">Email</label> <input type="text"
                                class="form-control" id="email">
                        </div>
                        <div class="form-group ">
                            <label for="phone">Phone</label> <input type="text"
                                class="form-control" id="phone">
                        </div>
                        <div class="form-group ">
                            <label for="status">Status</label> <input type="text"
                                class="form-control" id="status">
                        </div>
                        <div class="form-group col-md-6" >
                            <button type="submit" class="btn btn-primary" id="confirmed"  >Approve</button>

 

                        </div>
                        <div class="form-group col-md-6">
                            <button type="submit" class="btn btn-danger" id="rejected" >Reject</button>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
  <center><a href="admindashboard.jsp"><button class="btn btn-primary" >Go back</button></a></center>
</body>
<script src="js/applicationRequest.js">

 

</script>
<%
       String id=request.getParameter("id");
        String status=request.getParameter("status");
        System.out.println(id+" ok "+status);
        ApplicantDao applicantDao = new ApplicantImpl();
        boolean applicantStatus = applicantDao.updateApplicantStatus(id, status);
  %>
</html>
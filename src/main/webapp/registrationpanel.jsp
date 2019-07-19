<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.virtusa.collegeapp.dao.implementation.AlumniImpl" %>
<%@ page import="com.virtusa.collegeapp.dao.interfaces.AlumniDao" %>
<%@ page import="com.virtusa.collegeapp.model.Alumni" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
  <div class="modal " id="alumni" role="dialog">
        <div class="modal-dialog modal-md">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title" > Registration</h4>
            </div>
            <div class="modal-body">
               
                      
                              <form method="post">

            
                <div class="col-lg-6 col-md-6 col-sm-6 " style="padding-bottom: 10px;">
                  <label for="id"> Id </label>
                    <input class="form-control" name="id" placeholder="Registration number " type="text" required id="id" />
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
                <label for="name">  Name* </label>
                    <input class="form-control" name="name" placeholder=" Name " type="text" required id="name" />
                </div>
           
   			 <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
            <label for="course"> Course* </label>
                <select class="form-control" id="course" name="course">
                      <option hidden="hidden" readonly="readonly">select</option>
                     <option>BE</option>
            <option>BTECH</option>
            <option>ME</option>
                 
                </select>
                
              

            </div>
          
            <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
            <label for="branch">  Branch* </label>
                <select class="form-control" id="branch" name="branch">
                      <option hidden="hidden" readonly="readonly">select</option>
                  <option>Aeronautical Engineering</option>
                  <option>Information Technology</option>
                  <option>Communication Systems</option>
                  <option>Computer Science and Engineering</option>
                 
                </select>

            </div>
          
            <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
             <label for="email"> Email* </label>
                <input type="email" class="form-control" placeholder="email " id="email" name="email" required>
            </div>
          <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
             <label for="mobile"> mobile* </label>
                <input type="text" class="form-control" placeholder="mobile " id="mobile" name="mobile" required>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
             <label for="yop"> Year of Passing* </label>
                <input type="text" class="form-control" placeholder="yop " id="yop" name="yop" required>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6" style="padding-bottom: 10px;">
             <label for="ppassword">  Password* </label>
                <input type="password" class="form-control" placeholder=" password " id="password" name="password" required>
            </div>
                
                 <button type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase "
                 >Submit</button>
               
           
        </form>
        
            <%
            
            if(request.getParameter("name")!=null)
            {
            	
                long mobile = Long.parseLong(request.getParameter("mobile").toString());
                
          			 Alumni alumni = new Alumni(request.getParameter("id"),request.getParameter("name"),request.getParameter("yop"),request.getParameter("course"),
            		request.getParameter("branch"),request.getParameter("email"),request.getParameter("password")
            		,mobile);
            	AlumniDao alumniDao = new AlumniImpl();
            	
				boolean status = alumniDao.insertAlumni(alumni);   
				//System.out.println(status);
				if(status){ %>
				
				<script type="text/javascript">
				alert("Registration Done");
				</script>
           <%}
            }
            %>
            
            </div>
          </div>
        </div>
      </div>
      </body>
</html>

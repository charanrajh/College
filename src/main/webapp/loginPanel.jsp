<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.virtusa.collegeapp.dao.implementation.LoginImpl" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <script src="js/myscript.js" ></script>
</head>
<body>
  <div class="modal " id="myModal" role="dialog">
        <div class="modal-dialog modal-sm">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title" > Login Here</h4>
            </div>
            <div class="modal-body">
           
                    <form action="LoginServlet" method="post" id="loginform" onSubmit="return validateForm();">
                        <div class="form-group">
                          <input type="text" class="form-control" id="id" placeholder="Enter Id" name="id" required>
                        </div>
                        <div class="form-group">
                          <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required>
                        </div>
                        <button type="submit" class="btn-submit" >Submit</button>
                      </form>
            </div>
          </div>
        </div>
      </div>
      </body>
     
</html>
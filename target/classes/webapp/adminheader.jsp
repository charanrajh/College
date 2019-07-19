<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	
     <nav id="sidebar">
     
     
             <div class="sidebar-header">
                <img src="img/virtusa.png"  width="52%">
            </div>
            <ul class="list-unstyled components"> 
            <li>
                    <a href="admindashboard.jsp"> Home</a>
                </li>             
                <li>
                    <a href="applicationRequest.jsp" ><i class="fas fa-user">&nbsp;</i> Application Request</a>
                </li>

                <li>
                    <a href="adminplacement.jsp"><i class="fa fa-trophy"></i> Placement Update</a>
                </li>
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i class="fas fa-clock">&nbsp;</i> Manage</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="showfaculties.jsp"><i class="	fas fa-arrow-alt-circle-right">&nbsp;</i> Faculty</a>
                        </li>
                        <li>
                            <a href="showallstudents.jsp"><i class="	fas fa-arrow-alt-circle-right">&nbsp;</i> Student</a>
                        </li>
                        
                    </ul>
                </li>
                
                
                <li>
                    <a href="#"><i class="fa fa-calendar">&nbsp;</i> News/Updates</a>
                </li>
               
            </ul>

          
        </nav>
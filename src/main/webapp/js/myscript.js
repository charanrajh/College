//login validation 

function validateForm() {
    var un = document.loginform.id.value;
    var pw = document.loginform.pwd.value;
    var username = "username"; 
    var password = "password";
    if ((un == null) || (un =='')) {
    	 alert ("Username can't be blank ");
        return false;
    }
    else if ((pw == null) || (pw == '')) {
   	 alert (" password can't be blank ");
       return false;
   }
    
    
   
  }


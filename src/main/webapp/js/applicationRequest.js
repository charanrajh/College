window.addEventListener('load',function()
 
        {
   
 
        //alert("form submitted");
 
        var xhr=null;
 
        //create ajax object
 
        try
 
        {
 
            xhr= new XMLHttpRequest(); //chrome,safari,firefox


 
        }
 
        catch(err)
 
        {
 
            try
 
            {
 
                xhr = new ActiveXObject("MSXML2.XMLHttp.6.0"); //IE
 
            }
 
            catch(err)
 
            {
 
                console.log("Ajax Object not created");
 
            }




 
        }


 
        //Ajax Event handling 
 
        //once response received from server


 
        xhr.onreadystatechange = function()
 
        {
            var acknowledge=null;
 
            
 
            if (xhr.readyState == 4)//successful response
 
            {

                acknowledge=xhr.responseText;
                acknowledge=JSON.stringify(acknowledge);
                localStorage.setItem("response",acknowledge);		
            
              
            }
 
        }
 
        //open the connection
 
        xhr.open('post','ApplicantServlet',false);
 
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
 
        //read values from form       
 
 
        xhr.send();
        my=localStorage.getItem("response");
    	console.log("hi",my);
    	localStorage.setItem("myB",my);
    	
    	 paresedResponse=JSON.parse(localStorage.getItem("myB"));
    	paresedResponse=JSON.parse(paresedResponse);
    	console.log(paresedResponse);	
    	var headingName = ["Click to View","Applicant ID","Applicant Name"];
    	var col = [];
    for (var i = 0; i < paresedResponse.length; i++)
    	{ 
    		for (var key in paresedResponse[i]) 
    		{ 
    			if (col.indexOf(key)===-1) 
    		       { 
    				col.push(key); 
    				} 
    		 }
    	    } 
    	var table=document.createElement("table");
    	var button="<button type='button' onclick='pas(this)' id='dai'class='btn btn'data-toggle='modal'data-target='#myModal' >View</button>";
    	var tr=table.insertRow(0); 
    	for (var i=0; i < headingName.length; i++) { 
    		var th=document.createElement("th");
    	    th.innerHTML=headingName[i]; 
    	    tr.appendChild(th); 
    	    } 
    	    for (var i=0; i < paresedResponse.length; i++) { 
    	    	tr=table.insertRow(-1); 
    	    	var b=tr.insertCell(-1); 
    	    	b.innerHTML=button; 
    	    	for (var j=0; j < col.length-8; j++) 
    	    	{ 
    	    		var tabCell=tr.insertCell(-1);
    	    tabCell.innerHTML=paresedResponse[i][col[j]]; 
    	    b.setAttribute("id", paresedResponse[i].id); 
    	    } 
    	    	var divContainer=document.getElementById("display"); 
    	    	divContainer.innerHTML="" ; 
    	    	divContainer.appendChild(table); 
    	    	} 
    	    });
    	    function pas(elem1)
    	    { 
    	    var x=elem1.parentNode;
    	    var y=x.getAttribute("id"); 
    	    play(y); 
    	    var check=[]; 
    	    for (var i in paresedResponse) 
    	    	check.push([i, paresedResponse[i]]); 
    	    
    	    check.forEach(element=> {
    	    if (y == element[1].id) {
    	    document.getElementById("heading").innerHTML = element[1].id;
    	    document.getElementById("applicant_id").value = element[1].id;
    	    document.getElementById("fname").value = element[1].fname;
    	    document.getElementById("lname").value = element[1].lname;
    	    document.getElementById("interested_course").value = element[1].course;
    	    document.getElementById("interested_branch").value = element[1].branch;
    	    document.getElementById("x_marks").value = element[1].tenthM;
    	    document.getElementById("xii_marks").value = element[1].twelveM;
    	    document.getElementById("email").value = element[1].email;
    	    document.getElementById("phone").value = element[1].phone;
    	    document.getElementById("status").value = element[1].status; 	   
    	    }
    	    })

    	    }

    	    function play(a) {
    	    var buttonOne = document.getElementById("confirmed");
    	    // add onclick event
    	    buttonOne.onclick = function () {
    	    	var statusPut =buttonOne.id 
    	    	
    	   console.log(statusPut);
    	   
    	     window.location.href = "applicationRequest.jsp?status="+statusPut+"&id="+a;

    	    }
    	    var buttonTwo = document.getElementById("rejected");
    	    // add onclick event
    	    buttonTwo.onclick = function () {
    	    var statusPut=buttonTwo.id;	
    	    window.location.href = "applicationRequest.jsp?status="+statusPut+"&id="+a;
    	    }
    	    console.log(a)
    	    }
           
 
       
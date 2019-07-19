window.addEventListener('load',function()

		{
	var form=document.getElementById("searchFrm");
	form.addEventListener('submit',function()

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
			var response=null;

			var result=document.getElementById("result");

			if (xhr.readyState == 4)//successful response

			{
				response=xhr.responseText;
//				response=JSON.parse(response);
				
				alert(response);
				result.innerHTML=response;
			}

		}

		//open the connection

		xhr.open('post','StudentServlet',false);

		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

		//read values from form	    	          
		var studentId=document.getElementById('studentId').value;    	             	          
		xhr.send("studentId="+studentId);

		return true;

			});
		})
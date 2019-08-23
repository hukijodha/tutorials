<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Ericsson</title>
        <link href="/css/main.css" rel="stylesheet">
    </head>
    <body>
      	  <form action="/" method="post">
   <div class="container">
	
	<h2>SELECT DYNAMIC STATUS</h2>
	
  <ul>
  <li>
    <input type="radio" id="OutofOffice" name="status" value="OutofOffice">
    <label for="OutofOffice">Out of office</label>
    <div class="check"><div class="inside"></div></div>
  </li>
  
  <li>
    <input type="radio" id="InAmeeting" name="status" value="InAmeeting">
    <label for="InAmeeting">In a meeting</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  
  <li>
    <input type="radio" id="DND" name="status" value="DND">
    <label for="DND">Do not disturb</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  
  <li>
    <input type="radio" id="NONE" name="status" value="NONE">
    <label for="NONE">None</label>
    <div class="check"><div class="inside"></div></div>
  </li>
</ul>
<br>
 <button class="btn button" onclick="myFunction()">UPDATE</button>
 </div>
 
        </form>
 
       <p id="demo"></p>

			<script>
					function myFunction() 
					{ 
						   if (document.getElementById("OutofOffice").checked) 
						   {
						  	status = "OutofOffice";
						  	document.getElementById('demo').innerHTML =alert("SUCCESS"); 
						   }	
						   			 									    
						   else 
						   {
						    	   if (document.getElementById("InAmeeting").checked)
						    	 				  {
						    	 				  	status = "InAmeeting";
						    	 				  	document.getElementById('demo').innerHTML =alert("SUCCESS"); 
						    	 				  }    	 				  
						    	 				  
						    	 	 else
						    	 				  {
						    	 				          if (document.getElementById("DND").checked)
						    	 				          {
						    	 				   	       status = "DND";
						    	 				   	       document.getElementById('demo').innerHTML =alert("SUCCESS"); 
						    	 				          }
						    	 				  	     else
						    	 				  	      { 
						    	 				  	               if (document.getElementById("NONE").checked)
						    	 				  	               {
						    	 				  	                status ="NONE";
						    	 				  	                document.getElementById('demo').innerHTML =alert("SUCCESS"); 
						    	 				  	              }
						    	 				  	              else
						    	 				  	              {
						    	 				  	               document.getElementById('demo').innerHTML =alert("Error! Select one to Update"); 
						    	 				  	              }
						    	 				  	      }
						    	 				  
						    	 				  } 			  
						   }
					   
				}
				
		</script>
    </body>
</html>
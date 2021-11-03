<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js" ></script>
<style>  
body {  
    background-color: linen;
   
} 




form {

    display:flex 
    align-items: center;
    justify-content:center;

}

.error {

color:red;
margin-left:100px;

}


</style>  
<title>Login</title>
</head>
<body>


<form action="toLogin"  id="loginVerify" method="post" class="form-horizontal" style="margin-top:90px;">
<div class="control-group">
   <label class="control-label">UserName:</label>
    <div class="controls">
      <input type="text" name="userName" class="input-xlarge"><br>
    </div>
</div>

<div class="control-group">
   <label class="control-label">Password:</label>
    <div class="controls">
      <input type="password" name="password" class="input-xlarge"><br>
    </div>
</div>

<div class="control-group">
  <input type="submit" value="login" onClick="validate" class="btn btn-success" style="margin-left:100px";>
</div>

<div class="error">
${feedback}
</div>
</form>

<script type="text/javascript">
$(document).ready(function(){

	  $("#loginVerify").validate({
	    rules:{
	      
	      userName:{required:true},
	      
	      password:{
	        required:true,
	      }
	      

	    },
	    messages:{
	      userName:"Enter User name",
	      password:{
	        required:"Enter the password",
	        }
	      
	      
	    }

	  });

	});

</script> 




</body>
</html>
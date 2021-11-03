<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js" ></script>

<style>

.login-link {

margin-left:180px;


}

.error {

color:red;
margin-left:180px;

}


</style>
</head>
<body>
<form action="Register" class="form-horizontal" id="register" style="margin-top:90px;">

<div class="control-group">
   <label class="control-label">FirstName:</label>
    <div class="controls">
      <input type="text" name="firstName" class="input-xlarge" ><br>
    </div>
</div>

<div class="control-group">
   <label class="control-label">LastName:</label>
   <div class="controls">
      <input type="text" name="lastName" class="input-xlarge" ><br>
   </div>
</div>

<div class="control-group">
  <label class="control-label">UserName:</label>
  <div class="controls">
    <input type="text" name="userName" class="input-xlarge"><br>
   </div>
  <div class="error">${Error}</div> 
</div>

<div class="control-group">
  <label class="control-label">Password:</label>
  <div class="controls">
     <input type="password" name="password" class="input-xlarge"><br>
  </div>
</div>

<div class="control-group">
   <label class="control-label">Address:</label>
   <div class="controls">
      <input type="text" name="address" class="input-xlarge"><br>
    </div>
</div>

<div class="control-group">
  <label class="control-label">Phone Number:</label>
  <div class="controls">
    <input type="text" name="phoneNo" class="input-xlarge"><br>
   </div>
</div>

<div class="control-group">
  <input type="submit" value="submit" onClick="validate" class="btn btn-primary" style="margin-left:180px";>
</div>

</form>

<form action="login" class="login-link">
<label class="control-label">Already have a Account?</label>
  <input type="submit" value="Login"  class="btn btn-link" style="margin-left:100px";>
</form>
<script type="text/javascript">
$(document).ready(function(){

	  $("#register").validate({
	    rules:{
	      firstName:{required:true},
	      lastName:{required:true},
	      userName:{required:true},
	      email:{
	        required:true,
	        email:true
	      },
	      password:{
	        required:true,
	        minlength:6
	      },
	      phoneNo:{
	        required:true,
	        digits:true,
	        minlength:10
	      },
	      address:{required:true}

	    },
	    messages:{
	      firstName:"Enter first name",
	      lastName:"Enter last name",
	      userName:"Enter User name",
	      email:{
	        required:"Enter email Id",
	        email:"Enter valid email"
	      },
	      password:{
	        required:"Enter the password",
	        minlength:"Minimum length must be 6 "
	      },
	      phoneNo:{
	        required:"Enter the Mobile Number",
	        digits:"Enter only number",
	        maxlength:"No of digits  should be 10 "
	      },
	      address:{
	    	  required:"Enter the address"
	      },
	      
	    }

	  });

	});

</script> 

</body>
</html>
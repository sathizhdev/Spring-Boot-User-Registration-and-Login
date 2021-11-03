<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js" ></script>



<meta charset="ISO-8859-1">
<title>Welcome ${username}</title>
<style type="text/css">
p {
 font-size:40px;
 
}

body {

margin:90px;


}

.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  right: 0;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1;}
.dropdown:hover .dropdown-content {display: block;}
.dropdown:hover .dropbtn {background-color: #3e8e41;}

</style>
</head>
<body  >

<div class="d-flex justify-content-center" >
<p >Welcome ${username} You have logged in</p>

<div class="dropdown" style="float:right;">
  <button class="dropbtn">${username}</button>
  <div class="dropdown-content">
  
<form action="/viewprofile" >
<input type="submit" value="viewProfile" class="btn btn-link" />
</form>

    <a href="#">Settings</a>
    <a href="#">Contact</a>
    <a href="login.jsp">Logout</a>
  </div>
</div>


<br>



</div>

</body>
</html>
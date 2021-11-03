<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js" ></script>
<meta charset="ISO-8859-1">
<title>Welcome ${username}</title>
</head>
<body>

<div class="container bootstrap snippets bootdeys">
<div class="row">
    <div class="col-md-4 col-sm-6 content-card">
        <div class="card-big-shadow">
            <div class="card card-just-text" data-background="color" data-color="blue" data-radius="none">
                <div class="content">
                    

                    <jsp:useBean id="userinfo" class="com.example.demo.modal.userDetails"></jsp:useBean> 
<jsp:setProperty property="*" name="userinfo"/> 
ProfilePage:<br> 
<jsp:getProperty property="username" name="userinfo"/><br> 
<jsp:getProperty property="firstName" name="userinfo"/><br>
<jsp:getProperty property="lastName" name="userinfo"/><br>
<jsp:getProperty property="address" name="userinfo"/><br>
<jsp:getProperty property="phoneNo" name="userinfo"/><br>

                    
                    
                </div>
            </div> <!-- end card -->
        </div>
    </div>
    </div>
    </div>



</body>
</html>
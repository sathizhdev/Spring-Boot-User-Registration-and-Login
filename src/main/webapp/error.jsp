<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ErrorPage</title>
<style>
$gb: #F2EEE8;
$wh: #FFFFFF;
$dark: #383A41;
$red: #EB6D6D;
$blue: #5E7FDC;

$break: 400px;

html, body {
	margin: 0;
	padding: 0;
	width: 100%;
	min-height: 100vh;
	background-color: $gb;
	font-family: 'Open Sans';
}

*, *:before, *:after {
	box-sizing: content-box;
	transform: translate3d(0, 0, 0);
}

.face {
	width: 300px;
	height: 300px;
	border: 4px solid $dark;
	border-radius: 10px;
	background-color: $wh;
	margin: 0 auto;
	margin-top: 100px;
	
	@media screen and (max-width: $break) {
		margin-top: 40px;
    	transform: scale(.8);
  	}
	
	.band {
		width: 350px;
		height: 27px;
		border: 4px solid $dark;
		border-radius: 5px;
		margin-left: -25px;
		margin-top: 50px;
		
		.red {
			height: calc(100% / 3);
			width: 100%;
			background-color: $red;
		}
		
		.white {
			height: calc(100% / 3);
			width: 100%;
			background-color: $wh;
		}
		
		.blue {
			height: calc(100% / 3);
			width: 100%;
			background-color: $blue;
		}
		
		&:before {
			content: "";
			display: inline-block;
			height: 27px;
			width: 30px;
			background-color: rgba($wh,0.3);
			position: absolute;	
			z-index: 999;
		}
		
		&:after {
			content: "";
			display: inline-block;
			height: 27px;
			width: 30px;
			background-color: rgba($dark,0.3);
			position: absolute;	
			z-index: 999;
			right: 0;
			margin-top: -27px;
		}
	}
	
	.eyes {
		width: 128px;
		margin: 0 auto;
		margin-top: 40px;
		
		&:before {
			content: "";
			display: inline-block;
			width: 30px;
			height: 15px;
			border: 7px solid $dark;
			margin-right: 20px; 
			border-top-left-radius: 22px;
    		border-top-right-radius: 22px;
			border-bottom: 0;
		}
		
		&:after {
			content: "";
			display: inline-block;
			width: 30px;
			height: 15px;
			border: 7px solid $dark;
			margin-left: 20px;
			border-top-left-radius: 22px;
    		border-top-right-radius: 22px;
			border-bottom: 0;
		}
	}
	
	.dimples {
		width: 180px;
		margin: 0 auto;
		margin-top: 15px;
		
		&:before {
			content: "";
			display: inline-block;
			width: 10px;
			height: 10px;
			margin-right: 80px; 
			border-radius: 50%;
			background-color: rgba($red,0.4);
		}
		
		&:after {
			content: "";
			display: inline-block;
			width: 10px;
			height: 10px;
			margin-left: 80px;
			border-radius: 50%;
			background-color: rgba($red,0.4);
		}
	}
	
	.mouth {
		width: 40px;
		height: 5px;
		border-radius: 5px;
		background-color: $dark;
		margin: 0 auto;
		margin-top: 25px;
	}
}

h1 {
	font-weight: 800;
	color: $dark;
	text-align: center;
	font-size: 2.5em;
	padding-top: 20px;
	
	@media screen and (max-width: $break) {
		padding-left: 20px;
		padding-right: 20px;
		font-size: 2em;
  	}
}

.btn {
	font-family: "Open Sans";
	font-weight: 400;
	padding: 20px;
	background-color: rgba($blue,1.0);
	color: white;
	width: 320px;
	margin: 0 auto;
	text-align: center;
	font-size: 1.2em;
	border-radius: 5px;
	cursor: pointer; 
	margin-top: 80px;
	margin-bottom: 50px;
	transition: all .2s linear;
	
	@media screen and (max-width: $break) {
		margin: 0 auto;
		margin-top: 60px;
		margin-bottom: 50px;
    	width: 200px;
  	}
	
	&:hover {
		background-color: rgba($blue,0.8);
		transition: all .2s linear;
	}
}
</style>
</head>
<body>
<div class="face">
	<div class="band">
		<div class="red"></div>
		<div class="white"></div>
		<div class="blue"></div>
	</div>
	<div class="eyes"></div>
	<div class="dimples"></div>
	<div class="mouth"></div>
</div>

<h1>Oops! Something went wrong!</h1>
<div class="btn">Return to Login</div>
</body>
</html>
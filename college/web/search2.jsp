<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title

</head>
<body>
    <style> 
input[type=text] {
    width: 230px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
input[type=submit] {
    width: 150px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    
    padding: 12px 20px 12px 20px;
   
}

input[type=text]:focus {
    width: 90%;
}
body {
	margin: 0px;
	padding: 0px;
	color: #333;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 13px;
	line-height: 1.7em; 
	background-color: #1bb720;
	background-image: url(images/back.jpg);
	background-repeat: repeat
}
.center {
    margin: auto;
    margin-top:190px;
    width: 100%;
    padding: 10px;
    text-align: center;
}
</style>
<div class="center">
<form action="Display2.jsp" method="post">
 <br><br>   <input type="text" name="location" placeholder="Enter your location"><br><br>
<input type="submit" value="Search">
</form>
</div>
</body>
</html>
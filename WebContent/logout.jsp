<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
</head>
<body>
<% 
String s=(String)session.getAttribute("id");
if(s==null){out.println("<a style='color:green;font-size:40px;'href='singin.html'>Plz Login First SingIn</a>");}
else{session.invalidate();
out.println("<center><h1 style='font-size:150px;color:yellow;'>LogOut Successful :)</h1></center>");

} %>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer"style="height:70px;margin-top:740px;"> TriMax	&copy; &nbsp;2018-2019&nbsp;<br>
            <a style="color:white ;font-size:20px;"  href="advertisement.html">Post-Add</a>-|-
             <a style="color:white ;font-size:20px;" href="index.html">Home</a>-|-
             <a style="color:white ;font-size:20px;" href="empsingin.html">
             Emp-Login</a>-|-
 <a style="color:white ;font-size:20px;" href="privacy.html">Our privacy Scheme
</a>-|- <a style="color:white; font-size:20px;" href="infrastructure.html">Infrastructure</a>-|-
 <a style="background:white;font-size:27px;" href="aboutus.html">TriMax </a>
</div>
</body>
</html>
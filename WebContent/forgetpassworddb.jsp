<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>your password</title>
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />

</head>
<body>
<%@page import="java.sql.*" %>
<%
try
{
	
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vikas","vikas");
	  Statement statement = con.createStatement();
String id=request.getParameter("userid");
      ResultSet resultset = statement.executeQuery("select * from userdb where userid = '" + id + "'") ; 

      if(!resultset.next()) {
          out.println("Sorry, could not find that Userid. ");
      } else {
  %>

  <TABLE BORDER="1">
      <TR>
         <TH>UserID</TH>
         <TH>Name</TH>
         <TH>mobile</TH>
         <TH>password</TH>
         
     </TR>
     <TR>
         <TD> <%= resultset.getString(1) %> </TD>
         <TD> <%= resultset.getString(2) %> </TD>
         <TD> <%= resultset.getString(3) %> </TD>
         <TD><h1> <%= resultset.getString(4) %></h1> </TD>
        
     </TR>
 </TABLE>
 <BR>
 <%

     } out.println("<a href='singin.html'>SingIN</a>");
}catch(Exception e){} 
 %>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer"style="height:70px;margin-top:20px;background:black"> TriMax	&copy; &nbsp;2018-2019&nbsp;<br>
            <a style="color:white ;font-size:20px;"  href="advertisement.html">Post-Add</a>-|-
             <a style="color:white ;font-size:20px;" href="index.html">Home</a>-|-
             <a style="color:white ;font-size:20px;" href="contect.html">
             Contect-Us</a>-|-
 <a style="color:white ;font-size:20px;" href="privacy.html">Our privacy Scheme
</a>-|- <a style="color:white; font-size:20px;" href="infrastructure.html">Infrastructure</a>-|-
 <a style="background:white;font-size:27px;" href="aboutus.html">TriMax </a>
</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="indexstyle/style.css" />
<title>Your Profile:)</title>
</head>
<body>

<%
try {
	
	//make session here then it show the detail according to userid.
	//String id=request.getParameter("userid");
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vikas","vikas");
	Statement statement = con.createStatement();
 
	//String id=(String)session.getAttribute("id");
	
	//	out.println(" :-"+id);
	      ResultSet resultset = statement.executeQuery("select * from expense");// where userid = '" + id + "'") ; 

	      /*if(!resultset.next()) {
	          out.println("Sorry, could not find that Userid. ");
	          out.println("PLZ LOGIN FIRST :");
	  		out.println("<a href='clientsingin.html'>SING-IN</a>");

	      } */while(resultset.next()) {
	  %>

	  <TABLE BORDER="1">
	      <TR>
	         
	         <TH>Name</TH>
	         <TH>Amount</TH>
	         <TH>Text</TH>
	         
	     </TR>
	     <TR>
	         <TD> <%= resultset.getString(1) %> </TD>
	         <TD> <%= resultset.getString(2) %> </TD>
	         <TD> <%= resultset.getString(3) %> </TD>
	         
	     </TR>
	 </TABLE>
	 <BR>
	  <% 
}}
catch(Exception e){}

%><div id="footer"style="height:70px;margin-top:90px;background:black"> TriMax	&copy; &nbsp;2018-2019&nbsp;<br>
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
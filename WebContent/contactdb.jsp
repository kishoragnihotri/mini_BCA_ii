<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Sucessful</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%
Connection con=null;
try {
	
	String id=request.getParameter("message");
	if(id==null){response.sendRedirect("singup.html");}
	String username=request.getParameter("name");
	String mob=request.getParameter("email");
	//String password1=request.getParameter("password1");

	//String password2=request.getParameter("passwor2");
	//String password=request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vikas","vikas");
	PreparedStatement pstmt=con.prepareStatement("insert into contact values(?,?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,username);
	
	pstmt.setString(3, mob);
	//pstmt.setString(4, mob);
	int k=pstmt.executeUpdate();
    out.println("<center><h1 style='color:Green;font-size:100px;'>Congratulation :) you'r Message is sended :)</h1><center> "+k);
    out.println("<h1><a href='index.html'>Home page</a></h1>");


	}

catch(Exception e){}

%>
|<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
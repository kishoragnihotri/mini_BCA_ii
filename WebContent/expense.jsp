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
	
	String id=request.getParameter("des");
	if(id==null){response.sendRedirect("expense.html");}
	String username=request.getParameter("amount");
	String mob=request.getParameter("name");
		Class.forName("oracle.jdbc.driver.OracleDriver");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vikas","vikas");
	PreparedStatement pstmt=con.prepareStatement("insert into expense values(?,?,?)");
	pstmt.setString(1,mob);
	pstmt.setString(2,username);
	
		pstmt.setString(3, id);
	int k=pstmt.executeUpdate();
    out.println("<center><h1 style='color:Green;font-size:100px;'>Updated</h1><center> "+k);
    out.println("<h1><a href='adminuser.html'>Admin page</a></h1>");


	}

catch(Exception e){}

%>
|<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer"style="height:70px;margin-top:90px;background:black"> TriMax	&copy; &nbsp;2018-2019&nbsp;<br>
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
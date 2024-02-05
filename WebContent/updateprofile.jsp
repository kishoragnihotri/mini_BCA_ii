<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="singincss/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>client update details</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
try
{
	//take userid from session make go ahead :)
	String id=(String)session.getAttribute("id");
	if(id==null){response.sendRedirect("singin.html");}
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vikas","vikas");
	PreparedStatement ps=con.prepareStatement("select *from userdb where userid=?");
	ps.setString(1,id);
	ResultSet rs=ps.executeQuery();
	
%><% 
if(rs.next()) 
{
%><br>
<div class="login">
	<h1>Update</h1>
    <form method="post"action="updatedb.jsp">
    	<input type="text" name="userid" value="<%=rs.getString(1) %>" readonly />
        <input type="text" name="username" value="<%=rs.getString(2) %>"  />
        <input type="text" name="password" value="<%=rs.getString(3) %>"  />
        <input type="text" name="mobile" value="<%=rs.getString(4) %>"  />
        <button type="submit" class="btn btn-primary btn-block btn-large">update</button>
       
    </form>
</div>
    

 <% }
}
catch(Exception e){}

%>

</body>
</html>
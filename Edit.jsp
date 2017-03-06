<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

session=request.getSession(false);

String uname=(String)session.getAttribute("uname");
 out.println(uname);
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Compumatrice","root","root");
	PreparedStatement ps=con.prepareStatement("select * from registration where username='"+uname+"'");
	
	ResultSet rs=ps.executeQuery();
	
 	if(rs.next())
 	{
 %>
 		<form name="update" method="post" action="EditForm">
	<table>
		
		<tr>
			<td align="right">FirstName</td>
			<td>
				<input type="text" name="fname" value="<%=rs.getString("first_name") %>">
			</td>
		</tr>
		<tr>
			<td align="right">Lastname</td>
			<td>
				<input type="text" name="lname" value="<%=rs.getString("last_name") %>">
			</td>
		</tr>
		<tr>
			<td align="right">Email</td>
			<td>
				<input type="text" name="email" value="<%=rs.getString("email") %>">
			</td>
		</tr>
		<tr>
			<td align="right">Phone No</td>
			<td>
				<input type="text" name="phone" value="<%=rs.getString("phone_no") %>">
			</td>
		</tr>
		<tr>
			<td align="right">Location</td>
			<td>
				<input type="text" name="loc" value="<%=rs.getString("location") %>">
			</td>
		</tr>
		<tr> 
			<td> </td>
			<td align="left"> <input type="submit" name="submit" value="update">
		    <input type="reset" value="Reset" name="reset"></td>
		</tr>
	</table>
	</form>
   
   
   
 <%
 	}
}
 catch(Exception e)
 {
 	e.printStackTrace();
 }

%>



</body>
</html>
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
	 
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Compumatrice","root","root");
		PreparedStatement ps=con.prepareStatement("select * from registration");
		ResultSet rs=ps.executeQuery();
	
	%>
	
	<table border='5' width="800">
	 <tr align="center">
	  <td >
	    First Name
	  </td>
	  
	  <td>
	    Last Name
	  </td>
	  
	  <td>
	    Email
	  </td>
	 
	 <td>
	    Phone No
	  </td>
	  
	  <td>
	    Location
	  </td>
			  <td>
			  </td>		  
	 </tr>
	 
	 <%
	 	while(rs.next())
	 	{
	 %>
	 <tr align="center">
	   <td><%=rs.getString("first_name") %></td>
	   <td><%=rs.getString("last_name") %></td>
	   <td><%=rs.getString("email") %></td>
	   <td><%=rs.getString("phone_no") %></td>
	   <td><%=rs.getString("location") %></td>
	   <td><a href="Edit.jsp">Edit</a>  <a href="delete.jsp">Delete</a></td>
	 </tr>
	 
	 <%
	 	}
	}
	 catch(Exception e)
	 {
	 	e.printStackTrace();
	 }
	
	 %>
	 
	</table>
	
</body>
</html>
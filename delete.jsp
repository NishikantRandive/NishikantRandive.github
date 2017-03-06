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
	PreparedStatement ps=con.prepareStatement("delete from registration where username='"+uname+"'");
	
	int i=ps.executeUpdate();
	
 	if(i>0)
 	{
 		out.println("Record Deleted Successfully");
 		RequestDispatcher rd=request.getRequestDispatcher("Table_Data.jsp");
		rd.include(request, response);
 	}
 	
 	else
 	{
 		out.println("Try again");
 	}
}
 catch(Exception e)
 {
 	e.printStackTrace();
 }

%>
	
</body>
</html>
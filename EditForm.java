

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

public class EditForm extends HttpServlet {
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession(false);
		String name=(String) session.getAttribute("uname");
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String loc=request.getParameter("loc");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Compumatrice","root","root");
		PreparedStatement ps=con.prepareStatement("update registration set first_name=?,last_name=?,email=?,phone_no=?,location=? where username='"+name+"'");
		
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3, email);
		ps.setString(4, phone);
		ps.setString(5, loc);
		
		out.println(name);
		int i=ps.executeUpdate();
		out.println(name);
		if(i>0)
		{
			out.println("data updated Successfully");
		}
		else
		{
			out.println("try again");
		}

	}
	 catch(Exception e)
	 {
	 	e.printStackTrace();
	 }

	}	
	

}

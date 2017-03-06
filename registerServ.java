

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class registerServ extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String cmppass=request.getParameter("cmpass");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String loc=request.getParameter("loc");
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Compumatrice", "root", "root");
			PreparedStatement ps=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?)");
			ps.setString(1, uname);
			ps.setString(2, pass);
			ps.setString(3, cmppass);
			ps.setString(4, fname);
			ps.setString(5, lname);
			ps.setString(6, email);
			ps.setString(7, phone);
			ps.setString(8, loc);
			
			
			
		int i=ps.executeUpdate();
		
		
		
		if(i>0)
			{
				out.println("Data inserted");
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				rd.include(request, response);
			}
		
		
		}
		catch (Exception e) 
		{
			out.println(e);
		}
	}

}

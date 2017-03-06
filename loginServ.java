

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class loginServ extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/Compumatrice", "root", "root");
			PreparedStatement ps=con.prepareStatement("select * from registration where username=? and password=?");
			ps.setString(1, uname);
			ps.setString(2, pass);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("uname", uname);
				
				RequestDispatcher rd=request.getRequestDispatcher("Table_Data.jsp");
				rd.include(request, response);
			}
			else
			{
				out.println("Data not available..Please register");
				RequestDispatcher rd=request.getRequestDispatcher("Registration.jsp");
				rd.include(request, response);
			}
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}	
	}

}



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/Nimoart";
			String user="root";
			String pwd="root";
			String query="insert into Registration values(?,?,?)";
			Connection con=DriverManager.getConnection(url ,user,pwd);
			//getting statment
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1,username);
	        pstmt.setString(2,email);
	        pstmt.setString(3,password);
	       
	       int i=  pstmt.executeUpdate();
	       if (i != 0) {
	        	RequestDispatcher rd=request.getRequestDispatcher("login.html");
	        	rd.forward(request, response);
	        	
	        }else {
	        	RequestDispatcher rd=request.getRequestDispatcher("signup.html");
	        	rd.include(request, response);
	        }
	       pw.println("successful.......");
	        pstmt.close();
	        con.close();
		} catch (ClassNotFoundException|SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

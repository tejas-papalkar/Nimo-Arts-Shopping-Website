

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Mbuy
 */
@WebServlet("/Mbuy")
public class Mbuy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mbuy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String username=request.getParameter("cname");
		String email=request.getParameter("cmail");
		String mobileno=request.getParameter("cmno");
		String address=request.getParameter("caddress");
		String zipcode=request.getParameter("cpin");
		HttpSession session=request.getSession(false);
		//1 check if session exists
		if(session!=null) {
			session.setAttribute("customerName",username );
			session.setAttribute("customerMail",email );
			session.setAttribute("customerMno",mobileno );
			session.setAttribute("customeradd",address );
			session.setAttribute("customerZipcode",zipcode );
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/Nimoart";
			String user="root";
			String pwd="root";
			String query="insert into Buy values(?,?,?,?,?)";
			Connection con=DriverManager.getConnection(url ,user,pwd);
			//getting statment
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1,username);
	        pstmt.setString(2,email);
	        pstmt.setString(3,mobileno);
	        pstmt.setString(4,address);
	        pstmt.setString(5,zipcode);
	        int i=pstmt.executeUpdate();
	        if (i != 0) {
	        	RequestDispatcher rd=request.getRequestDispatcher("DemoAfterBuy.jsp");
	        	rd.forward(request, response);
	        }else {
	        	RequestDispatcher rd=request.getRequestDispatcher("middlebuy.html");
	        	rd.include(request, response);
	        }
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

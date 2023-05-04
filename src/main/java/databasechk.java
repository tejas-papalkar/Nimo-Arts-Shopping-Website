

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class databasechk
 */
@WebServlet("/databasechk")
public class databasechk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public databasechk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		String conString="jdbc:mysql://localhost:3306/";
        String user="root";
        String pwd="root";
        String Query1="CREATE DATABASE NimoArt";
        String Query2="USE ORGANIZATION";
        Connection con;
		con = DriverManager.getConnection(conString,user,pwd);
        Statement stmt=con.createStatement();
       stmt.execute(Query1);
       stmt.execute(Query2);
        stmt.close();
        con.close();
	} catch (ClassNotFoundException |SQLException e) {
		// TODO Auto-generated catch block
		pw.println(e);
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

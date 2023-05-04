

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
         PrintWriter pw = response.getWriter();
        
        if(Validate.checkUser(username, password))
        {
           session.setAttribute("user_name",username );
        	/*pw.println("<html>"+
			  "Welcome "+
			   username+
			   "<a href=\"index.html\">"+
			   "Check Your Details"+"<br>"+
			   //"<a href=\"logout.jsp\">"+
			   //"Logout"+
			   
			   "</html>");*/
           RequestDispatcher rs = request.getRequestDispatcher("Home.jsp");
           rs.forward(request, response);
        	pw.println();
        }
        else
        {
          //pw.println("Username or Password incorrect");
         RequestDispatcher rs = request.getRequestDispatcher("Errorlogin.jsp");
          rs.include(request, response);
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

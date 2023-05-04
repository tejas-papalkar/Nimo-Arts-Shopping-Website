import java.sql.*;
public class Validate {
	public static boolean checkUser(String username,String password) 
    {
        boolean st =false;
        try {
        	
            //loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/Nimoart";
			String user="root";
			String pwd="root";
			String query="select * from Registration where username=? and password=?";
            //creating connection with the database
            Connection con = DriverManager.getConnection(url,user,pwd);
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            ResultSet rs =pstmt.executeQuery();
            st = rs.next();
            

        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return st;                 
    }   
}



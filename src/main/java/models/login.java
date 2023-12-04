package models;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/Login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String passw = request.getParameter("password");
		
		String url  = "jdbc:mysql://localhost:3307/gestionbibliotheque";
		String user = "root";
		String pwd  = "";
		// ...
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con = DriverManager.getConnection(url, user, pwd);

		    PreparedStatement pst = con.prepareStatement("SELECT id FROM users WHERE email=? AND password=?");
		    pst.setString(1, email);
		    pst.setString(2, passw);
		    ResultSet rs = pst.executeQuery();
		    if (rs.next()) {
		        session.setAttribute("login", email);
		        response.sendRedirect("index.jsp");
		    } else {
		        response.sendRedirect("login.jsp");
		    }

		    rs.close();
		    pst.close();
		    con.close();
		} catch (Exception e) {
			System.out.print(e);

		}

	}

}

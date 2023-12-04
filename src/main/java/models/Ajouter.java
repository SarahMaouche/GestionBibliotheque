package models;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Ajouter")
public class Ajouter extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("login") != null) {
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String matricule = request.getParameter("matricule");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String role = request.getParameter("role");

			String url = "jdbc:mysql://localhost:3307/gestionbibliotheque";
			String user = "root";
			String pwd = "";
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url, user, pwd);
				PreparedStatement pst = con.prepareStatement(
						"INSERT INTO users (email, matricule, nom, password, prenom, role) VALUES (?, ?, ?, ?, ?, ?)");
				pst.setString(1, email);
				pst.setString(2, matricule);
				pst.setString(3, nom);
				pst.setString(4, password);
				pst.setString(5, prenom);
				pst.setString(6, role);

				pst.executeUpdate();
				response.sendRedirect("listUtilisateurs.jsp");
				pst.close();
				con.close();
			} catch (Exception e) {
				System.out.print(e);
			}
		} else
			response.sendRedirect("login.jsp");
	}

}
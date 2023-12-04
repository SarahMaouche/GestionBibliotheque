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

@WebServlet("/ModifierUtilisateur")
public class ModifierUtilisateurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		// Récupération des nouvelles informations de l'utilisateur depuis le formulaire
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String matricule = request.getParameter("matricule");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		// Récupération de l'ID de l'utilisateur à modifier depuis la requête
		String userId = request.getParameter("id");

		String url = "jdbc:mysql://localhost:3307/gestionbibliotheque";
		String user = "root";
		String pwd = "";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			// Requête SQL pour mettre à jour les informations de l'utilisateur
			PreparedStatement pst = con.prepareStatement(
					"UPDATE users SET nom=?, prenom=?, matricule=?, email=?, role=?, password=? WHERE id=?");
			pst.setString(1, nom);
			pst.setString(2, prenom);
			pst.setString(3, matricule);
			pst.setString(4, email);
			pst.setString(5, role);
			pst.setString(6, password);
			pst.setString(7, userId); // Utilisation de l'ID pour identifier l'utilisateur à mettre à jour

			int rowsUpdated = pst.executeUpdate();

			pst.close();
			con.close();

			if (rowsUpdated > 0) {
				// Si la mise à jour a réussi, rediriger vers une page de confirmation
				response.sendRedirect("listUtilisateurs.jsp");
			} else {
				// Si la mise à jour a échoué, rediriger vers une page d'échec
				response.sendRedirect("ajouterUtilisateur.jsp");
			}
		} catch (Exception e) {
			System.out.print(e);
			response.sendRedirect("ajouterUtilisateur.jsp");
		}
	}

}

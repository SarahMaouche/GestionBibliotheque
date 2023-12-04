<%@page import="org.apache.tomcat.dbcp.dbcp2.PStmtKey"%>
<%@ page language="java"%>
<%@ page import="java.sql.*"%>




<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="css/style.css">

<title>Insert title here</title>
</head>
<body>
	<div class="card-body">
		<div class="py-2">
			<div class="max-w-7xl mx-auto sm:px-6 lg:px-8" >
				<div class="table-responsive">

					<table border="1" width="50%"
						class="table table-bordered table-responsive">
						<thead>
							<tr>
								<th>ID</th>
								<th>Nom</th>
								<th>Prenom</th>
								<th>Matricule</th>
								<th>email</th>
								<th>Role</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>

								<%
								String url = "jdbc:mysql://localhost:3307/gestionbibliotheque";
								String user = "root";
								String pwd = "";
								int number = 0;
								try {
									Class.forName("com.mysql.cj.jdbc.Driver");
									Connection con = DriverManager.getConnection(url, user, pwd);
									PreparedStatement pst = con.prepareStatement("SELECT * FROM users");
									ResultSet rs = pst.executeQuery();

									while (rs.next()) {
								%>
							
							<tr>
								<td><%=rs.getString(1)%></td>
								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(3)%></td>


								<td><%=rs.getString(4)%></td>

								<td><%=rs.getString(5)%></td>

								<td><%=rs.getString(6)%></td>
								<td><a class="btn btn-danger" type="button"
									href="Delete?id=<%=rs.getString(1)%>">Supprimer</a> <a
									class="btn btn-success" type="button"
									href="ModifierUtilisateur?id=<%=rs.getString(1)%>">Modifier</a></td>

							</tr>
							<%
							}
							pst = con.prepareStatement("SELECT COUNT(*) from users");
							rs = pst.executeQuery();
							rs.next();
							number = rs.getInt(1);
							rs.close();
							pst.close();
							con.close();

							} catch (Exception e) {
							e.printStackTrace(); // Log the exception in a proper way
							}
							%>
						</tbody>
					</table>
					Nembre d'etudiants:<%=number%><br> <a type="button"
						class="btn btn-primary" href="ajouterUtilisateur.jsp">Ajouter</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
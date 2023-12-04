<%@ page language="java"%>
<%@ page import="java.sql.*"%>

 

<!DOCTYPE html>
<html lang="en">

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

<title>Ajouter utilisateur</title>
</head>

<body>
	<main>
		<div class="container">

			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div
							class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

							<div class="d-flex justify-content-center py-4">
								<a href="index.html"
									class="logo d-flex align-items-center w-auto"> <img
									src="assets/img/logo.png" alt=""> <span
									class="d-none d-lg-block">Ajouter Utilisateur</span>
								</a>
							</div>
							<!-- End Logo -->

							<div class="card mb-3">

								<div class="card-body">

									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Crée un
											compte</h5>
										<p class="text-center small">Veuillez renseigner les
											champs</p>
									</div>

									<form method="POST"  action="Ajouter"
										class="row g-3 needs-validation" novalidate>
										<div class="col-12">
											<label for="yourName" class="form-label">Nom</label> <input
												type="text" name="nom" class="form-control" required>
											<div class="invalid-feedback">Please, enter your name!</div>
										</div>

										<div class="col-12">
											<label for="yourName" class="form-label">Prenom</label> <input
												type="text" name="prenom" class="form-control" required>
											<div class="invalid-feedback">Please, enter your name!</div>
										</div>

										<div class="col-12">
											<label for="yourName" class="form-label"> Matricule</label> <input
												type="text" name="matricule" class="form-control" required>
											<div class="invalid-feedback">Please, enter your name!</div>
										</div>

										<div class="col-12">
											<label for="yourEmail" class="form-label"> Email</label> <input
												type="email" name="email" class="form-control"
												id="yourEmail" required>
											<div class="invalid-feedback">Please enter a valid
												Email adddress!</div>
										</div>



										<div class="col-12">
											<label for="password" class="form-label">Password</label> <input
												type="password" name="password" class="form-control"
												required>
											<div class="invalid-feedback">Please enter your
												password!</div>
										</div>

										<div class="col-12">
											<label for="" class="form-label">Veullez selectioné</label><br>

											<input type="radio" name="role" value="Etudiant" checked>Etudiant
										    <input type="radio" name="role" value="Bibliothecaire">Bibliothecaire
											
										</div>


										<div class="col-12">
											<input class="btn btn-primary w-100" type="submit"
												value="Ajouter"> </input>
										</div>

									</form>

								</div>
							</div>

							<div class="credits">
								<!-- All the links in the footer should remain intact. -->
								<!-- You can delete the links only if you purchased the pro version. -->
								<!-- Licensing information: https://bootstrapmade.com/license/ -->
								<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
							</div>

						</div>
					</div>
				</div>

			</section>

		</div>
	</main>
	<!-- End #main -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/chart.js/chart.umd.js"></script>
	<script src="assets/vendor/echarts/echarts.min.js"></script>
	<script src="assets/vendor/quill/quill.min.js"></script>
	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>
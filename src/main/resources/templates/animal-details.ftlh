<!DOCTYPE html>
<html>
	<head>	
		<!-- BootStrap 5 Call -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- Tab Title -->
		<title> Top Animals - ${animal.name} </title>
	</head>
	<body>
		<!-- BootStrap 5 Call -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

		<div class="container-fluid text-center fs-1 bg-secondary text-dark">
			<p>${animal.name}</p>

			<!-- Navigation -->
			<div class="container-fluid text-center fs-1 bg-secondary text-dark">
				<!-- Buttons Container with Black Background -->
				<div class="container-fluid">
					<div class="d-flex justify-content-center py-3" style="margin-top: -40px;">
						<a href="/animals"><button class="btn btn-dark mx-2">View All Animals</button></a>
						<a href="/animals/createForm"><button class="btn btn-dark mx-2">Create an Animal</button></a>
					</div>
				</div>
			</div>
		</div>

		<!-- Details Module -->
		<br>
		<div class="container">
			<div class="row align-items-center">
			  
				<div class="col-md-6">
					<img src="blue.JPEG" alt="blue" class="img-fluid">
				</div>
			  	
				<div class="col-md-6">
					<h2>${animal.name}</h2>
					<h5>Intelligence Level : ${animal.intellect}</h5>
					<p>${animal.description}</p>

			  	</div>
			</div>
		  </div>
	</body>
</html>
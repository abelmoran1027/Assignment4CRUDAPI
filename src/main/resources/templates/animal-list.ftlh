<!DOCTYPE html>
<html>
	<head>	
		<!-- BootStrap 5 Call -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

		<!-- Tab Title -->
		<title> Top Animals - Homepage </title>									
	</head>
	<body>
		<!-- BootStrap 5 Call -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>			
			
		<div class="container-fluid text-center fs-1 bg-secondary text-dark">
  			<!-- Page Title -->
  			<p class>My Top Favorite Animals</p>
  
  			<!-- Buttons Container with Black Background -->
  			<div class="container-fluid">
    			<div class="d-flex justify-content-center py-3" style="margin-top: -40px;">
					<a href="animal-list.ftlh"><button class="btn btn-dark mx-2">Homepage</button></a>
					<a href="animal-details.ftlh"><button class="btn btn-dark mx-2">View Animals</button></a>
					<a href="animal-create.ftlh"><button class="btn btn-dark mx-2">Create an Animal</button></a>
					<a href="animal-update.ftlh"><button class="btn btn-dark mx-2">Update an Animal</button></a>
    			</div>
  			</div>
		</div>

		<br>
		<div class="container my-5">
			<#list animalList as animal>
			<div class="row align-items-center border rounded shadow-sm p-4 mb-4 bg-light">
				<div class="col-md-8">
					<h3 class="fw-bold text-primary mb-2">${animal.name}</h3>
					<p class="text-muted mb-0">Intellect: <span class="fw-semibold">${animal.intellect}</span></p>
				</div>
				<div class="col-md-4 text-md-end mt-3 mt-md-0">
					<a href="/animals/${animal.id}">
						<button class="btn btn-outline-dark">More Info</button>
					</a>
				</div>
			</div>
		</#list>
		</div>




	</body>
</html>
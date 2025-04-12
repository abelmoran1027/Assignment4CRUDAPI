<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Create New Animal</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Header -->
<div class="container-fluid text-center fs-1 bg-secondary text-dark">
    <p>Create a New Animal</p>

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


<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="mb-4 text-center">Add Animal</h2>
            <form id="new-animal" action="/animals/new" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Description:</label>
                    <input type="text" class="form-control" id="description" name="description" required>
                </div>

                <div class="mb-3">
                    <label for="intellect" class="form-label">Intelligence:</label>
                    <select class="form-select" id="intellect" name="intellect" required>
                        <option value="average">Average</option>
                        <option value="smart">Smart</option>
                        <option value="genius">Genius</option>
                        <option value="superSmart">SuperSmart</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary">Create Animal</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
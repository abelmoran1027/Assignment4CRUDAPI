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
    <div class="container-fluid">
        <div class="d-flex justify-content-center py-3" style="margin-top: -40px;">
            <a href="animal-list.ftlh"><button class="btn btn-dark mx-2">Homepage</button></a>
            <a href="animal-details.ftlh"><button class="btn btn-dark mx-2">View Animals</button></a>
            <a href="animal-create.ftlh"><button class="btn btn-dark mx-2">About</button></a>
            <a href="animal-update.ftlh"><button class="btn btn-dark mx-2">About</button></a>
        </div>
    </div>
</div>

<!-- Form -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="mb-4 text-center">Add Animal</h2>
            <form method="POST" action="/api/animals">
                <div class="mb-3">
                    <label for="name" class="form-label">Animal Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                </div>

                <div class="mb-3">
                    <label for="intelligence" class="form-label">Intelligence</label>
                    <select class="form-select" id="intelligence" name="intelligence" required>
                        <option value="">Select Intelligence</option>
                        <option value="average">Average</option>
                        <option value="smart">Smart</option>
                        <option value="genius">Genius</option>
                        <option value="superSmart">SuperSmart</option>
                    </select>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
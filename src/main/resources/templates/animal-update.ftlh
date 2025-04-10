<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <title>Update Animal</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Header -->
<div class="container-fluid text-center fs-1 bg-secondary text-dark">
  <p>Update an Animal</p>
</div>

<!-- Update Form -->
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <h2 class="mb-4 text-center">Update Animal</h2>

      <form method="POST" action="/api/animals/update">
        <!-- Simulated PUT with hidden input (common approach) -->
        <input type="hidden" name="_method" value="PUT">

        <div class="mb-3">
          <label for="id" class="form-label">Animal ID</label>
          <input type="number" class="form-control" id="id" name="id" required>
        </div>

        <div class="mb-3">
          <label for="name" class="form-label">Animal Name</label>
          <input type="text" class="form-control" id="name" name="name">
        </div>

        <div class="mb-3">
          <label for="description" class="form-label">Description</label>
          <textarea class="form-control" id="description" name="description" rows="3"></textarea>
        </div>

        <div class="mb-3">
          <label for="intelligence" class="form-label">Intelligence</label>
          <select class="form-select" id="intelligence" name="intelligence">
            <option value="">Select Intelligence</option>
            <option value="average">Average</option>
            <option value="smart">Smart</option>
            <option value="genius">Genius</option>
            <option value="superSmart">SuperSmart</option>
          </select>
        </div>

        <div class="text-center">
          <button type="submit" class="btn btn-warning">Update</button>
        </div>
      </form>

    </div>
  </div>
</div>
</body>
</html>
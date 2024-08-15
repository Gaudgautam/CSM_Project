<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
    <div class="container text-center mt-5">
        <div class="row">
            <div class="col-md-12">
                <!-- Error Symbol -->
                <i class="bi bi-exclamation-triangle-fill text-danger" style="font-size: 5rem;"></i>
                <h1 class="display-4 text-danger mt-3">Error 404: Page Not Found</h1>
                <p class="lead">We're sorry, but the page you were looking for doesn't exist.</p>
                <hr>
                <p>
                    <a href="home.jsp" class="btn btn-primary btn-lg">Go to Homepage</a>
                    <a href="login.jsp" class="btn btn-secondary btn-lg">Go Back</a>
                </p>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

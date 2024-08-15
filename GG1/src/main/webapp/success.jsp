<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        .success-box {
            border: 2px solid #28a745;
            padding: 30px;
            border-radius: 10px;
            background-color: #e9f7ef;
        }
        .success-icon {
            font-size: 4rem;
            color: #28a745;
        }
        .success-message {
            color: #155724;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="text-center success-box">
                    <!-- Success Symbol -->
                    <i class="bi bi-check-circle-fill success-icon"></i>
                    <h1 class="display-4 success-message mt-3">Success!</h1>
                    <p class="lead success-message">Your operation was completed successfully.</p>
                    <hr>
                    <p>
                        <a href="home.jsp" class="btn btn-primary btn-lg">Go to Homepage</a>
                        <a href="#" class="btn btn-secondary btn-lg">View Details</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

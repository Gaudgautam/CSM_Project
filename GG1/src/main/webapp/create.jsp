<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Customer - Customer Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f7f7f7; /* Light grey background */
            color: #333;
        }
        .container {
            margin-top: 50px;
        }
        .card {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <img src="https://via.placeholder.com/40x40?text=Logo" alt="Company Logo"> <!-- Company Symbol -->
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Customer Data</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Create Customer Form -->
    <div class="container">
        <div class="card">
            <h5 class="card-header text-center">Create New Customer</h5>
            <div class="card-body">
                <form action="createCustomer" method="post">
                    <div class="form-group">
                        <label for="customerName">Customer Name</label>
                        <input type="text" class="form-control" id="customerName" name="customerName" placeholder="Enter customer name" required>
                    </div>
                    <div class="form-group">
                        <label for="TotalLifetimeValue">Total Lifetime Value</label>
                        <input type="number" step="0.01" class="form-control" id="TotalLifetimeValue" name="TotalLifetimeValue" placeholder="Enter total lifetime value" required>
                    </div>
                    <div class="form-group">
                        <label for="AverageOrderValue">Average Order Value</label>
                        <input type="number" step="0.01" class="form-control" id="AverageOrderValue" name="AverageOrderValue" placeholder="Enter average order value" required>
                    </div>
                    <div class="form-group">
                        <label for="CustomerSegmentCategory">Customer Segment Category</label>
                        <input type="text" class="form-control" id="CustomerSegmentCategory" name="CustomerSegmentCategory" placeholder="Enter customer segment category" required>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Create Customer</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

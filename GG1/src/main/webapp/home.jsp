<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Customer Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style> /* Page background gradient */
        body {
            background: linear-gradient(to right, #2c3e50, #4ca1af);
            color: #ffffff;
            font-family: Arial, sans-serif;
        }

        /* Navbar styles */
        .navbar {
            background-color: #547596; /* Darker blue color for the navbar */
            padding: 10px 20px;
        }
        .navbar-brand img {
            height: 50px; /* Adjust image height */
            width: auto;
            border-radius: 50px;
        }
        .navbar-nav .nav-link {
            color: #ffffff !important; /* White text for nav links */
            margin-right: 20px;
            font-weight: bold;
        }
        .navbar-nav .nav-link:hover {
            background-color: #2c3e50; /* Slightly darker blue on hover */
            border-radius: 5px;
        }

        /* Carousel and Cards */
        .carousel-item img {
            width: 100%;
            height: 450px;
            object-fit: cover;
        }
        .card {
            background-color: #ffffff;
            color: #333333;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-body .btn {
            display: block;
            margin-top: 20px;
            text-align: left;
            padding: 0.4rem 1rem;
            width: fit-content;
            font-size: 0.9rem;
        }

        /* Footer */
        .footer {
            background-color: rgba(0, 0, 0, 0.8);
            color: #ffffff;
            padding: 20px;
            text-align: center;
            border-radius: 10px 10px 0 0;
            margin-top: 50px;
        }

        .dropdown-item {
            background-color: #002752;
            color: #ffffff;
        }

        .container {
            margin-top: 20px;
        }
    </style>
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="#">
            <img src="https://img.freepik.com/premium-vector/blue-green-sign-that-says-green-light_1205884-546.jpg?w=740" alt="CMS Logo"> <!-- Replace with your logo URL -->
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="customerDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Customer Data
                    </a>
                    <div class="dropdown-menu" aria-labelledby="customerDropdown">
                        <a class="dropdown-item" href="create.jsp">Create</a>
                        <a class="dropdown-item" href="#">Update</a>
                        <a class="dropdown-item" href="#">Delete</a>
                        <a class="dropdown-item" href="#">Show</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    

    <!-- Carousel -->
    <div id="customerCarousel" class="carousel slide  mx-0.4" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img style="background-color:#34495e42 ;" src="https://media.istockphoto.com/id/1498981757/photo/crm-mockup-or-man-in-a-telemarketing-call-center-helping-talking-or-networking-online-via.webp?b=1&s=170667a&w=0&k=20&c=JEbbDDrTLwYVdmdkO6A_h9aQN7vs_8pAWaPpTNrmuU4=" alt="Customer Engagement">
            </div>
            <div class="carousel-item">
                <img     style="background-color:#34495e42 ;"  src="https://media.istockphoto.com/id/1471444483/photo/customer-satisfaction-survey-concept-users-rate-service-experiences-on-online-application.jpg?s=612x612&w=0&k=20&c=HFh1o4JU68KWv7PXgbLdIZT0_qepmgePEkvbsLJr5p0=" alt="Customer Support">
            </div>
            <div class="carousel-item">
                <img src="https://via.placeholder.com/1200x450?text=Customer+Satisfaction" style="background-color:#34495e42 ;" alt="Customer Satisfaction">
            </div>
        </div>
        <a class="carousel-control-prev" href="#customerCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#customerCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- Welcome Text -->
    <div class="container text-center " style="font-size: 8px;" >
        <h1 class="display-4">Welcome to the Customer Management System</h1>
        <p class="lead">Efficiently manage your sales operations across various ports and shipping routes.</p>
    </div>

    <!-- Cards Section -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-4">
                <div class="card p-3 mb-4">
                    <div class="card-body">
                        <i class="bi bi-geo-alt-fill" style="font-size: 3rem; color: #6a11cb;"></i>
                        <h5 class="card-title mt-3">Track Shipments</h5>
                        <p class="card-text">Monitor the status of your shipments across different ports with real-time updates.</p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 mb-4">
                    <div class="card-body">
                        <i class="bi bi-box-seam" style="font-size: 3rem; color: #2575fc;"></i>
                        <h5 class="card-title mt-3">Inventory Management</h5>
                        <p class="card-text">Effectively manage and keep track of your inventory levels and stock.</p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-3 mb-4">
                    <div class="card-body">
                        <i class="bi bi-people-fill" style="font-size: 3rem; color: #28a745;"></i>
                        <h5 class="card-title mt-3">Customer Management</h5>
                        <p class="card-text">Enhance customer relations by effectively managing customer data and interactions.</p>
                        <a href="#" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 Customer Management System. All rights reserved.</p>
        <p>Developed with care to ensure the best customer experience.</p>
        
        
        
        
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

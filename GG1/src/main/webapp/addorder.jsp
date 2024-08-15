<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Order</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <h2 class="mt-5">Add New Order</h2>
        <form action="addOrder" method="post">
            <div class="form-group">
                <label for="customerID">Customer ID</label>
                <input type="text" class="form-control" id="customerID" name="customerID" required>
            </div>
            <div class="form-group">
                <label for="orderAmount">Order Amount</label>
                <input type="number" class="form-control" id="orderAmount" name="orderAmount" step="0.01" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Order</button>
        </form>
    </div>
</body>
</html>


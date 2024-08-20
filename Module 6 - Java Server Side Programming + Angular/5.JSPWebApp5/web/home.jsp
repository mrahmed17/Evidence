<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            body {
                background-color: #343a40; /* Dark background color */
                color: #f8f9fa; /* Light font color */
                font-family: 'Arial', sans-serif; /* Font family */
            }
            .navbar {
                background-color: #212529; /* Dark navbar */
            }
            .navbar-brand, .nav-link {
                color: #f8f9fa !important; /* Light color for text in navbar */
            }
            .navbar-nav .nav-link.active {
                font-weight: bold; /* Bold text for active link */
            }
            .container {
                background-color: #495057; /* Dark background for the container */
                padding: 20px;
                border-radius: 8px;
                margin-top: 20px; /* Space from the top */
            }
            h1 {
                font-weight: bold; /* Bold font for the title */
            }
            .btn-custom {
                background-color: #007bff; /* Blue background for button */
                border-color: #007bff; /* Blue border for button */
                color: #fff; /* White text color */
                font-size: 1.25rem; /* Larger font size */
                padding: 10px 20px; /* Padding around the button */
            }
            .btn-custom:hover {
                background-color: #0056b3; /* Darker blue on hover */
                border-color: #004085; /* Darker blue border on hover */
            }
            .btn-container {
                margin-top: 50px; /* Space from the top */
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Evidence</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/webapp3">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="addstudentform.jsp">Add Student</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="studentlist.jsp">Student List</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container text-center mt-5">
            <h1 class="mb-4">Welcome!</h1>
            <p class="lead mb-4">This is the home page of our test web application. Use the button below to quickly add a new student.</p>
            <div class="btn-container">
                <a href="addstudentform.jsp" class="btn btn-custom">Add Student</a>
                  <a href="studentlist.jsp" class="btn btn-custom">Student List</a>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

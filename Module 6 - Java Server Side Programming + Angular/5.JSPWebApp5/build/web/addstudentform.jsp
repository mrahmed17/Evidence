<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
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
                background-color: #495057; /* Dark background for the form container */
                padding: 20px;
                border-radius: 8px;
            }
            .form-control, .form-control:focus {
                background-color: #6c757d; /* Dark background for input fields */
                color: #f8f9fa; /* Light font color for input fields */
                border: 1px solid #ced4da; /* Border color */
            }
            .btn-primary {
                background-color: #007bff; /* Blue background for button */
                border-color: #007bff; /* Blue border for button */
            }
            .btn-primary:hover {
                background-color: #0056b3; /* Darker blue on hover */
                border-color: #004085; /* Darker blue border on hover */
            }
            h1 {
                font-weight: bold; /* Bold font for the title */
            }
            label {
                font-weight: bold; /* Bold font for labels */
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
                            <a class="nav-link" aria-current="page" href="/webapp3">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="addstudentform.jsp">Add Student</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="studentlist.jsp">Student List</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container mt-4">
            <h1 class="text-center mb-4">Add Student</h1>

            <form action="savestudent.jsp" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name"/>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email"/>
                </div>
                <div class="form-group">
                    <label for="gender">Gender</label>
                    <div>
                        <label>
                            <input type="radio" name="gender" value="Male"/> Male
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Female"/> Female
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Others"/> Others
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <select name="subject" id="subject" class="form-control">
                        <option value="">Please Select</option>
                        <option value="Java">Java</option>
                        <option value="C#">C#</option>
                        <option value="PHP">PHP</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

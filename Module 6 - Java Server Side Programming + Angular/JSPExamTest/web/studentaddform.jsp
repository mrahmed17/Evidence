
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Form</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-dark text-light">
        
        <div class="container mt-5">
            <h1 class="text-center mb-4">Student Form</h1>

            <form action="savestudent.jsp" method="post" class="mx-auto" style="max-width: 500px;">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" name="name" class="form-control" id="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" name="email" class="form-control" id="email" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" name="address" class="form-control" id="address" required>
                </div>
                <div class="form-group">
                    <label for="cell">Cell No:</label>
                    <input type="text" name="cell" class="form-control" id="cell" required>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Save</button>
            </form>

            <div class="mt-5 text-center">
                <a href="home.jsp" class="btn btn-info mr-3">Home</a>
                <a href="viewallstudent.jsp" class="btn btn-info">View Student Data</a>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

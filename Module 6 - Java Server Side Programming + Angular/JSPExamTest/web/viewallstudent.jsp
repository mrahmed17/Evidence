<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.Student"%>
<%@page import="dao.StudentDao"%>
<%@page import="java.util.*"%>

<%
    List<Student> list = StudentDao.viewAllStudent();
    request.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>View All Students</title>
        <!-- Bootstrap CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="bg-dark text-light">

        <div class="container mt-5">
            <h1 class="text-center mb-4">Student List</h1>

            <table class="table table-bordered table-striped table-dark">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Cell</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="s" items="${list}">
                        <tr>
                            <td>${s.getId()}</td>
                            <td>${s.getName()}</td>
                            <td>${s.getEmail()}</td>
                            <td>${s.getAddress()}</td>
                            <td>${s.getCell()}</td>
                            <td>
                                <a href="updatestudentform.jsp?id=${s.getId()}" class="btn btn-info btn-sm mr-2">Edit</a>
                                <a href="deletestudent.jsp?id=${s.getId()}" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="text-center mt-4">
                <a href="home.jsp" class="btn btn-primary mr-2">Home</a>
                <a href="studentaddform.jsp" class="btn btn-success">Fill up Student Form</a>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>

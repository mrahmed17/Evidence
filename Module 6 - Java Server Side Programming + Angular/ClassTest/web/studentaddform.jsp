
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="color: cyan; background-color: black">

        <h1 style="text-align: center">Student Form</h1>



        <form action="savestudent.jsp"  method="post" style="text-align: center">
            <!--            Name: <input type="text" name="name"> <br>
                        Email: <input type="email" name="email"> <br>
                        Address: <input type="text" name="address"> <br>
                        Cell: <input type="text" name="cell"> <br>-->
            <div class="form-group">
                Name: <input type="text" name="name"> <br>
                Email: <input type="email" name="email"> <br>
                <!--   Address: <input type="text" name="address"> <br>
                  Cell: <input type="text" name="cell"> <br>-->
                <label for="gender">Gender</label>
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
            <div class="form-group">
                <label for="subject">Subject</label>
                <select name="subject" id="subject" class="form-control">
                    <option value="">Please Select</option>
                    <option value="Java">Java</option>
                    <option value="C#">C#</option>
                    <option value="PHP">PHP</option>
                </select>
            </div>
            <br>
            <br>
            <br>
            <input type="submit" value="Save">


            <div style="font-size: 20px; color: crimson; text-align:center;">

                <br>
                <br>
                <br>
                <br>
                <a href="home.jsp" style="color: aqua">Home</a>
                <br>
                <br>
                <a href="viewallstudent.jsp" style="color: aqua">View Student Data</a>

            </div>
        </form>

    </body>
</html>
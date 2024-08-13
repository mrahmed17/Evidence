
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="form-group">
                    <label for="gender">Gender</label>
                    <div>
                        <label>
                            <input type="radio" name="gender" value="Male" <%= "Male".equals(students.getGender()) ? "checked" : "" %> /> Male
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Female" <%= "Female".equals(students.getGender()) ? "checked" : "" %> /> Female
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Others" <%= "Others".equals(students.getGender()) ? "checked" : "" %> /> Others
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <select name="subject" id="subject" class="form-control">
                        <option value="">Please Select</option>
                        <option value="Java" <%= "Java".equals(students.getSubject()) ? "selected" : "" %>>Java</option>
                        <option value="C#" <%= "C#".equals(students.getSubject()) ? "selected" : "" %>>C#</option>
                        <option value="PHP" <%= "PHP".equals(students.getSubject()) ? "selected" : "" %>>PHP</option>
                    </select>
                </div>
    </body>
</html>
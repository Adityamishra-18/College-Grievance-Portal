<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 22-09-2026
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>Register</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<div class="auth-page">

    <div class="auth-card wide">

        <h1>Create Account</h1>

        <p>
            Register to submit and track campus complaints.
        </p>


        <form method="post"
              action="${pageContext.request.contextPath}/register">


            <div class="grid-2">


                <input
                        name="name"
                        placeholder="Full name"
                        required>


                <input
                        type="email"
                        name="email"
                        placeholder="College email"
                        required>


                <input
                        name="phone"
                        placeholder="Phone number">


                <input
                        name="department"
                        placeholder="Department / Branch">


                <input
                        type="password"
                        name="password"
                        placeholder="Password"
                        required>


                <select name="role" required>

                    <option value="" disabled selected>
                        Select Role
                    </option>

                    <option value="STUDENT">
                        Student
                    </option>

                    <option value="STAFF">
                        Staff
                    </option>

                </select>


            </div>


            <button class="btn full"
                    type="submit">

                Register

            </button>


        </form>


        <p>

            Already registered?

            <a href="${pageContext.request.contextPath}/login.jsp">
                Login
            </a>

        </p>


        <a href="${pageContext.request.contextPath}/index.jsp">
            ← Back to Home
        </a>

    </div>

</div>

</body>

</html>

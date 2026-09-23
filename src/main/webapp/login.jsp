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

  <title>Login</title>

  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<div class="auth-page">

  <div class="auth-card">

    <h1>Welcome Back</h1>

    <p>Login to your grievance portal</p>


    <%
      String error = request.getParameter("error");
      String registered = request.getParameter("registered");

      if ("true".equals(error)) {
    %>

    <div class="alert danger">
      Invalid email or password.
    </div>

    <%
      }

      if ("true".equals(registered)) {
    %>

    <div class="alert success">
      Registration successful. Please login.
    </div>

    <%
      }
    %>


    <form method="post"
          action="${pageContext.request.contextPath}/login">

      <input
              type="email"
              name="email"
              placeholder="Email"
              required>


      <input
              type="password"
              name="password"
              placeholder="Password"
              required>


      <button class="btn full"
              type="submit">

        Login

      </button>

    </form>


    <p>
      New student?

      <a href="${pageContext.request.contextPath}/register.jsp">
        Create account
      </a>
    </p>


    <a href="${pageContext.request.contextPath}/index.jsp">
      ← Back to Home
    </a>

  </div>

</div>

</body>

</html>

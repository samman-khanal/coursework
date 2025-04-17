<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
</head>
<body>
<h2>Register</h2>
<form method="post" action="RegisterServlet">
    <label for="name">Name: </label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="email">Email: </label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="password">Password: </label>
    <input type="password" id="password" name="password" required><br><br>

    <button type="submit">Register</button>
</form>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
</head>
<body>
<h2>Login</h2>
<form method="post" action="LoginServlet">
    <label for="email">Email: </label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="password">Password: </label>
    <input type="password" id="password" name="password" required><br><br>

    <button type="submit">Login</button>
</form>

</body>
</html>

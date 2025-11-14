<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            width: 350px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 15px;
            color: #333;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #007bff;
            border: none;
            color: white;
            border-radius: 6px;
            margin-top: 15px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn:hover {
            background: #0056b3;
        }

        .message {
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
        }

        .error { color: red; }
        .success { color: green; }
    </style>

</head>
<body>

<div class="container">
    <h2>Login</h2>

    <% 
        String error = request.getParameter("error");
        String logout = request.getParameter("logout");
        String success = request.getParameter("success");
    %>

    <% if (error != null) { %>
        <p class="message error">Invalid Credentials! Please try again.</p>
    <% } %>

    <% if (logout != null) { %>
        <p class="message success">Logged out successfully.</p>
    <% } %>

    <% if (success != null) { %>
        <p class="message success">Login successful!</p>
    <% } %>

    <form action="login" method="post">
        <input type="text" class="input-field" name="username" placeholder="Enter username" required>

        <input type="password" class="input-field" name="password" placeholder="Enter password" required>

        <button type="submit" class="btn">Login</button>
    </form>
</div>

</body>
</html>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h2>Login Page</h2>

<% if (request.getParameter("error") != null) { %>
    <p style="color:red;">Invalid Credentials!</p>
<% } %>

<form action="login" method="post">
    Username: <input type="text" name="username" required /><br/><br/>
    Password: <input type="password" name="password" required /><br/><br/>
    <button type="submit">Login</button>
</form>

</body>
</html>
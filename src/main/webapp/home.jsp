<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4b79a1, #283e51);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        .card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(12px);
            border-radius: 15px;
            padding: 40px;
            text-align: center;
            width: 350px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.3);
            animation: fadeIn 1.2s ease-in-out;
        }

        h2 {
            margin: 0 0 15px;
            font-size: 26px;
            font-weight: bold;
        }

        .success {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            background: #00c6ff;
            color: #fff;
            border-radius: 25px;
            font-size: 16px;
            text-decoration: none;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0096c7;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>

<div class="card">
    <h2>Welcome!</h2>
    <p class="success">Login Successful 🎉</p>
    <a href="login.jsp" class="btn">Logout</a>
</div>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        .login {
            height:300px;
            width: 400px;
            margin: 0;
            padding: 10px;
            border: 1px solid gray;
            border-radius: 5px;
        }
        .login input {
            padding: 5px;
            margin: 5px;
            border: 1px solid black;
            border-radius: 10px;

        }
    </style>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="login" method="post">
    <div class="login">
    <h2>Login</h2>
    <label for="name">
        <input type="text" name="username" id="name" size="40" placeholder="username"/>
    </label>
    <label for="pass" >
        <input type="password" name="password" id="pass" size="40" placeholder="password"/>
    </label>
        <input type="submit" value="Sign in"/>
    </div>
</form>
</body>
</html>
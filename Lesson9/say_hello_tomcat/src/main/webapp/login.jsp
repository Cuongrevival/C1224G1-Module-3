<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/1/2025
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

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

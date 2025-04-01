<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>dictionary</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form action="/dictionary" method="post">
    <input type="text" name="word" placeholder="Enter your word: "/>
    <input type="submit" id="submit" value="Dictionary">

</form>
</body>
</html>
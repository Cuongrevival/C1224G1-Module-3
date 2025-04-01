<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Money Converter</title>
</head>
<body>
<h1>Change money</h1>
<br/>
<form action="money" method="post">
    <label for="rate">Rate <br>
        <input type="number" name="rate" id="rate" placeholder="rate"></label>
    <label for="money">VND<input type="number" name="vnd" id="money" placeholder="Enter your money"
    /></label>
    <input type="submit" id="submit" value="Converter"/>
</form>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form action="/discount" method="post">
    <label >
        <input type="text" name="description"  placeholder="Discount Description">
    </label>
    <br>
    <label >
        <input type="number" name="price" id="price" placeholder="Price">
    </label>
    <br>
    <label >
        <input type="number" name="percent" id="percent" placeholder="discount">
    </label>
    <input type="submit" id="submit" value="Calculation">
</form>
</body>
</html>
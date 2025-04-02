<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Currency Converter</title>
    <style>
        body {
            align-self: center;
            max-width: 400px;
            border-radius: 5px;
            margin-top: 100px;
            margin-left: 550px;
        }
        h2 {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .rate{
            padding: 10px;
            border: 1px solid gray;
            border-radius: 5px;
            color: orangered;
            font-size: large;
            box-sizing: border-box;


        }
        #submit {
            border: none;
            border-radius: 5px;
            margin-left: 150px;
            cursor: pointer;
            background-color: green;
            color: white;
        }
        input {
            display: flex;
            flex-direction: column;
            padding: 10px;
            border-radius: 5px;
        }
        #submit:hover {
            background-color: orange;
        }
    </style>
</head>
<body>
<h2>Currency Converter</h2>
<form action="converter.jsp" method="post">
    <div class="rate">
        <label>Rate: </label><br/>
        <input type="number" name="rate" placeholder="RATE" value="22000"/><br/>

        <label>USD: </label><br/>
        <input type="number" name="usd" placeholder="USD" value="0"/><br/>
        <input type="submit" id="submit" value="Converter"/>
    </div>
</form>
</body>
</html>
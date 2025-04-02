<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 30px;
            border: 1px solid black;
            display: flex;
            justify-content: center;
            padding: 10px;
            width: 400px;
            height: 400px;
        }

        #first, #second{
            width: 100px;
            padding: 10px;
            border: 1px solid gray;
            border-radius: 6px;
            color: blue;
        }

        .operand {
            cursor: crosshair;
            display: flex;
            padding: 10px;
        }
        #operand {
            padding: 10px;
        }

        .operand option {
            background-color: black;
            color: white;
            padding: 2px;
        }
        .operand option:hover {
            background-color: orange;
            color: white;
            cursor: pointer;
        }
        #submit {
            padding: 10px;
            background-color: green;
            color: white;
            display:flex;
            justify-content: center;
            border-radius: 5px;
            font-weight: bold;
        }
        #submit:hover {
            background-color: yellowgreen;
            color: white;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form action="calculator" method="post">
    <h4>Simple Calculator</h4>
    <div class="first-number">
        <label>
            First operand: <input type="number" name="first" id="first" placeholder="Enter your first number">
        </label>
    </div>
    <div class="operand">
        <label for="operand">
            <select name="operand" id="operand">
                <option value="addition">Addition</option>
                <option value="subtraction">Subtraction</option>
                <option value="multiply">Multiply</option>
                <option value="division">Division</option>
            </select>
        </label>
    </div>
    <div class="second-number">
        <label>
            Second operand: <input type="number" name="second" id="second" placeholder="Enter your second number">
        </label>
    </div>
    <input type="submit" id="submit" value="Calculate">
</form>
</body>
</html>
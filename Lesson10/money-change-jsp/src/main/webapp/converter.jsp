<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
    <style>
        body {
            margin-top: 100px;
            margin-left: 550px
        }
        h1 {
            font-family: Arial, sans-serif;
            font-size: 40px;
            padding: 10px;
            margin: 0;
            border: 3px solid black;
            border-radius: 5px;
            width: 300px;
        }

    </style>
</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));

    float vnd = rate * usd;
%>
<h1>Rate: <%=rate%>
</h1>
<h1>USD: <%=usd%>
</h1>
<h1>VND: <%=vnd%>
</h1>
</body>
</html>
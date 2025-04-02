package com.example.calculatorjsp;

import model.Operations;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        float firstNumber = Float.parseFloat(request.getParameter("first"));
        float secondNumber = Float.parseFloat(request.getParameter("second"));
        String operator = request.getParameter("operand");
        Operations operations = new Operations();
        float result;
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Calculator</title>");
        out.println("</head>");
        out.println("<body>");
        try {
            result = operations.calculator(firstNumber, secondNumber, operator);
            out.println("<h1>Result: " + result + "</h1>");
        } catch (ArithmeticException e) {
            out.println("<h1>Can not be divided by zero or invalid operator</h1>");
        }
        out.println("</body>");
        out.println("</html>");
    }

    public void destroy() {
    }
}
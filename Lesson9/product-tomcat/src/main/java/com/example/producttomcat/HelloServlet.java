package com.example.producttomcat;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = "/discount")
public class HelloServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.println("<html>");
        double price = Double.parseDouble(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("percent"));
        double DiscountAmount = price * discount * 0.01;
        double DiscountPrice = price - DiscountAmount;
        out.println("<h1>Discount Amount: " + DiscountAmount + "</h1>");
        out.println("<h2>Price: " + DiscountPrice + "</h2>");
        out.println("</html>");
    }

    public void destroy() {
    }
}
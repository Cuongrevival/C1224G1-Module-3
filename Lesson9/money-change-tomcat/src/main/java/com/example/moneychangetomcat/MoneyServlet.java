package com.example.moneychangetomcat;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/money")
public class MoneyServlet extends HttpServlet {
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
       float rate = Float.parseFloat(request.getParameter("rate"));
       float vnd = Float.parseFloat(request.getParameter("vnd"));
       float usd = vnd / rate;
       PrintWriter out = response.getWriter();
       out.println("<html>");
       out.println("<h1>USD: " + usd + "</h1>");
       out.println("</html>");
   }

    public void destroy() {
    }
}
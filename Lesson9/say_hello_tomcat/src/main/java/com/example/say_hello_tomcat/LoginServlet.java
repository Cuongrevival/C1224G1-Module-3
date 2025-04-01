package com.example.say_hello_tomcat;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "helloServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        if ("admin".equals(username) && "admin".equals(password))
            out.println("<h1>Welcome " + username + "to website</h1>");
        else {
            out.println("<h1>Invalid username or password</h1>");
        }
        out.println("</html>");
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }


}
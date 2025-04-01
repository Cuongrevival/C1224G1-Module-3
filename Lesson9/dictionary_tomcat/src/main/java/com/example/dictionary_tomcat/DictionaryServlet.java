package com.example.dictionary_tomcat;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class DictionaryServlet extends HttpServlet {



    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        Map<String, String> parameterMap = new HashMap<>();
        parameterMap.put("message", "tin nhan");
        parameterMap.put("book", "sach");
        parameterMap.put("taken", "bi lay di");
        parameterMap.put("computer", "may tinh");
        parameterMap.put("menu", "danh sach");
        String search = request.getParameter("words");

        PrintWriter out = response.getWriter();
        String result = parameterMap.get(search);
        out.println("<html>");
        if (result == null) {
            out.println("<h1>Not found</h1>");
        } else {
            out.println("Words: " + search);
            out.println("Result: " + result);

        }
        out.println("</html>");
    }

    public void destroy() {
    }
}
package com.example.dictionarytomcat;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = "/dictionary")
public class DictionaryServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("military", "quan doi");
        dictionary.put("apple", "qua tao");
        dictionary.put("orange", "qua cam");
        String search = request.getParameter("word");
        out.println("<html>");
        String result = dictionary.get(search);
        if (result != null) {
            out.println("<p>" + result + "</p>");
        } else {
            out.println("<p>Can't find word: " + search + "</p>");
        }
        out.println("</html>");
    }

    public void destroy() {
    }
}
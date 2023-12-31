package com.xjgv.apiservlet.webapp.form;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/form")
public class FormServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String nombre = req.getParameter("name");
        String precio = req.getParameter("price");
        String fabricante = req.getParameter("manufacturer");
        resp.setContentType("text/html");
        Map<String, String> errores = new HashMap<>();
        if (nombre == null || nombre.isBlank()){
            errores.put("name", "El nombre no puede estar vacío");
        }
        if (precio == null || precio.isBlank()){
            errores.put("price", "El precio no puede estar vacío");
        }
        if (fabricante == null || fabricante.isBlank()){
            errores.put("manufacturer", "Debe especificar el fabricante");
        }

        if (errores.isEmpty()){
            try (PrintWriter out = resp.getWriter()) {

                out.println("<!DOCTYPE html>");
                out.println("<html data-bs-theme=\"dark\">");
                out.println("     <head>");
                out.println("         <meta charset=\" UTF-8\">");
                out.println("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n" +
                        "          integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\" crossorigin=\"anonymous\">");
                out.println("         <title></title>");
                out.println("     </head>");
                out.println("     <body>");
                out.println("         <h1>Datos</h1>");
                out.println("         <h1>Nombre: " + nombre + "</h1>");
                out.println("         <h1>Precio: $" + precio + "</h1>");
                out.println("         <h1>Fabricante: " + fabricante + "</h1>");
                out.println("     </body>");
                out.println("</html>");
            }
        } else {

            req.setAttribute("errores", errores);
            getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
        }

    }
}

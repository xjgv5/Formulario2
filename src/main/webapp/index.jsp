<%@page contentType="text/html; ISO-8859-1" pageEncoding="utf-8" %>
<%@page import="java.util.Map" %>

<%
    Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
%>
<!doctype html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<nav class="navbar bg-body-tertiary mb-5">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo-shadow.png" alt="Logo" width="30"
                 height="24" class="d-inline-block align-text-top"> Bootstrap
        </a>
    </div>
</nav>

<div class="container d-flex flex-column justify-content-center align-items-center">
    <h1>Formulario de envío</h1>
    <form action="/webapp-form-tarea2/form" method="post" class="col-8">
        <div class="mb-3">
            <label for="name" class="form-label">Nombre</label>
            <input type="text" class="form-control <% if(errores!= null && errores.containsKey("name")) out.println("is-invalid"); %>"
                   id="name" name="name" placeholder="Tu nombre" value="${param.name}">
            <%
                if (errores!= null && errores.containsKey("name")){
                    out.println("<div class='invalid-feedback'>El nombre no puede estar vacio</div>");
                }
            %>

        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Precio</label>
            <input type="text" class="form-control <% if(errores!= null && errores.containsKey("price")) out.println("is-invalid"); %>"
                   id="price" name="price" placeholder="$1,000.00" value="${param.price}">
            <%
                if (errores!= null && errores.containsKey("price")){
                    out.println("<div class='invalid-feedback'>El precio no puede estar vacio</div>");
                }
            %>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">Fabricante</label>
            <input type="text" class="form-control <% if(errores!= null && errores.containsKey("manufacturer")) out.println("is-invalid"); %>"
                   id="manufacturer" name="manufacturer" placeholder="Nombre de la compañia" value="${param.manufacturer}">
            <%
                if (errores!= null && errores.containsKey("manufacturer")){
                    out.println("<div class='invalid-feedback'>Debes ingresar el nombre del fabricante</div>");
                }
            %>
        </div>
        <div class="mb-3">
            <label for="pais" class="form-label">Pais</label>
            <select name="pais" class="form-select <% if(errores!= null && errores.containsKey("pais")) out.println("is-invalid"); %>"
                    id="pais">
                <option value="">-- Selecciona un pais --</option>
                <option value="MX" ${param.pais.equals("MX") ? "selected" : ""}>México</option>
                <option value="CO" ${param.pais.equals("CO") ? "selected" : ""}>Colombia</option>
                <option value="AR" ${param.pais.equals("AR") ? "selected" : ""}>Argentina</option>
            </select>
            <%
                if (errores!= null && errores.containsKey("pais")){
                    out.println("<div class='invalid-feedback'>Debes seleccionar un pais</div>");
                }
            %>
        </div>
        <input type="submit" class="btn btn-success" value="Enviar">
    </form>
</div> <!-- Fin del container -->

</body>
</html>
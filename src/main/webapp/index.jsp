<%@page contentType="text/html; ISO-8859-1" pageEncoding="utf-8" %>

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
                 height="24"
                 class="d-inline-block align-text-top">
            Bootstrap
        </a>
    </div>
</nav>

<div class="container d-flex flex-column justify-content-center align-items-center">
    <h1>Formulario de envío</h1>
    <form action="/webapp-form-tarea2/form" method="post">
        <div class="mb-3 col-md-6">
            <label for="name" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Tu nombre">
        </div>
        <div class="mb-3 col-md-6">
            <label for="price" class="form-label">Precio</label>
            <input type="text" class="form-control" id="price" name="price" placeholder="$1,000.00">
        </div>
        <div class="mb-3 col-md-6">
            <label for="name" class="form-label">Fabricante</label>
            <input type="text" class="form-control" id="manufacturer" name="manufacturer"
                   placeholder="Nombre de la compañia">
        </div>
        <input type="submit" class="btn btn-success" value="Enviar">
    </form>
</div> <!-- Fin del container -->

</body>
</html>
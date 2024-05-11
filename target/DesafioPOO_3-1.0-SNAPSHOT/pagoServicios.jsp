<%--
  Created by IntelliJ IDEA.
  User: danie
  Date: 9/5/2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pago de Servicios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        /* Personalización adicional del estilo */
        body {
            padding: 20px;
        }
    </style>
</head>
<body>
<%@include file="WEB-INF/Utilidades/navbar.jsp"%>

<div class="container">
    <h1 class="my-4">Operación: Pago de Servicios</h1>
    <form id="paymentForm">
        <div class="form-group">
            <label for="monto">Monto a pagar (Moneda local):</label>
            <input type="number" class="form-control" id="monto" required>
        </div>
        <button type="submit" class="btn btn-primary mr-2">Confirmar Pago</button>
        <button type="button" class="btn btn-secondary" id="cancelButton">Cancelar</button>
    </form>
    <div id="message" class="mt-4"></div>
</div>
<div class="container mt-5">
    <a href="principal.jsp" class="btn btn-primary">Regresar al Menú Principal</a>
</div>
<%@include file="WEB-INF/Utilidades/footer.jsp"%>

<script type="module" src="js/pagoServicio.js"></script>
</body>
</html>

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="pagoServicios.css">
</head>
<body>
<header>
    <%@include file="WEB-INF/Utilidades/navbar.jsp"%>
</header>

<div class="container">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h2 class="mb-0">Operación: Pago de Servicios</h2>
        </div>
        <div class="card-body">
            <form id="paymentForm">
                <div class="mb-3">
                    <label for="monto" class="form-label">Monto a pagar (Moneda local):</label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                        <input type="number" class="form-control" id="monto" required>
                    </div>
                </div>
                <button type="submit" class="btn btn-success mr-2">Confirmar Pago</button>
                <button type="button" class="btn btn-secondary" id="cancelButton">Cancelar</button>
            </form>
        </div>
    </div>
    <div class="text-center mt-4">
        <a href="principal.jsp" class="btn btn-outline-primary">Regresar al Menú Principal</a>
    </div>
</div>

<footer>
    <%@include file="WEB-INF/Utilidades/footer.jsp"%>
</footer>

<script type="module" src="js/pagoServicio.js"></script>
<script src="https://kit.fontawesome.com/your-fontawesome-kit.js"></script> <!-- Reemplaza con tu kit de FontAwesome -->
</body>
</html>

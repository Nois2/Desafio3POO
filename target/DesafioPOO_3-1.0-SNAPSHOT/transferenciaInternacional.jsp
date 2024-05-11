<%--
  Created by IntelliJ IDEA.
  User: danie
  Date: 9/5/2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transferencias Internacionales</title>
    <!-- Integrando Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="css/estiloTransferenciaInternacional.css">
</head>
<body>
<%@include file="WEB-INF/Utilidades/navbar.jsp"%>

<div class="container mt-5">
    <h1>Transferencias Internacionales</h1>
    <div class="row">
        <div class="col-md-6">
            <label for="country" class="form-label">Selecciona un país:</label>
            <select id="country" class="form-select">
                <option value="Costa Rica">Costa Rica</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Honduras">Honduras</option>
                <option value="Nicaragua">Nicaragua</option>
                <option value="Panamá">Panamá</option>
            </select>
        </div>
        <div class="col-md-6">
            <label for="bank" class="form-label">Selecciona una institución bancaria:</label>
            <select id="bank" class="form-select">
                <!-- Aquí se llenarán dinámicamente las opciones según el país seleccionado -->
            </select>
        </div>
    </div>
    <div class="mt-3">
        <button id="cancel" class="btn btn-secondary me-2">Cancelar</button>
        <button id="confirm" class="btn btn-primary">Confirmar Transferencia</button>
    </div>
</div>

<div class="container mt-5">
    <a href="principal.jsp" class="btn btn-primary">Regresar al Menú Principal</a>
</div>

<%@include file="WEB-INF/Utilidades/footer.jsp"%>

<script src="js/transferenciaInternacional.js"></script>
</body>
</html>


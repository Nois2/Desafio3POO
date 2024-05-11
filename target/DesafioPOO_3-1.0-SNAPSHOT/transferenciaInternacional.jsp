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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="css/estiloTransferenciaInternacional.css">
</head>
<body>
<%@include file="WEB-INF/Utilidades/navbar.jsp"%>

<div class="container">
    <h1>Transferencias Internacionales</h1>
    <label for="country">Selecciona un país:</label>
    <select id="country">
        <option value="Costa Rica">Costa Rica</option>
        <option value="El Salvador">El Salvador</option>
        <option value="Guatemala">Guatemala</option>
        <option value="Honduras">Honduras</option>
        <option value="Nicaragua">Nicaragua</option>
        <option value="Panamá">Panamá</option>
    </select>
    <label for="bank">Selecciona una institución bancaria:</label>
    <select id="bank">
        <!-- Aquí se llenarán dinámicamente las opciones según el país seleccionado -->
    </select>
    <button id="cancel">Cancelar</button>
    <button id="confirm">Confirmar Transferencia</button>
</div>
<div class="container mt-5">
    <a href="principal.jsp" class="btn btn-primary">Regresar al Menú Principal</a>
</div>
<%@include file="WEB-INF/Utilidades/footer.jsp"%>

<script src="js/transferenciaInternacional.js"></script>
</body>
</html>

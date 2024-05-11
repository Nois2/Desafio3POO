<%--
  Created by IntelliJ IDEA.
  User: danie
  Date: 9/5/2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transferencias Nacionales</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="styles.css">
</head>
<body>
<%@include file="WEB-INF/Utilidades/navbar.jsp"%>

<div class="container">
    <h1>Transferencias Nacionales</h1>
    <label for="bank-select">Selecciona un banco:</label>
    <select id="bank-select">
        <option value="Banco Agrícola" selected>Banco Agrícola</option>
        <!-- Opciones de banco se cargarán dinámicamente desde JS -->
    </select>
    <label for="amount-input">Monto:</label>
    <input type="text" id="amount-input">
    <button id="transfer-btn">Realizar Transferencia</button>
    <div id="message"></div>
</div>
<div class="container mt-5">
    <a href="principal.jsp" class="btn btn-primary">Regresar al Menú Principal</a>
</div>
<%@include file="WEB-INF/Utilidades/footer.jsp"%>

<script src="js/transferenciaNacional.js"></script>
</body>
</html>

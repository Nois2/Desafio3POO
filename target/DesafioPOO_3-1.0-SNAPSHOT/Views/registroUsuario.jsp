<%--
  Created by IntelliJ IDEA.
  User: danie
  Date: 9/5/2024
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Sistema bancario</title>
</head>
<body>
<jsp:include page="../WEB-INF/Utilidades/navbar.jsp"/>
<div class="containerBox">
    <h2>Registro de usuario</h2>
    <form id="registroForm" action="/registroControlador" method="post">

        <div class="inputBox">
            <label for="Nombre">Nombre:</label>
            <input type="text" id="Nombre" name="Nombre" required minlength="5"/>
        </div>

        <div class="inputBox">
            <label for="Pais">País:</label>
            <select id="Pais" name="Pais" required>
                <option value="Costa Rica">Costa Rica</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Honduras">Honduras</option>
                <option value="Nicaragua">Nicaragua</option>
                <option value="Panamá">Panamá</option>
            </select>
        </div>

        <div class="inputBox">
            <label for="NumTarjeta">Número de tarjeta de débito:</label>
            <input type="text" id="NumTarjeta" name="NumTarjeta" required minlength="8" maxlength="8" pattern="[0-9]{8}" title="Por favor, ingrese solo números."/>
        </div>

        <div class="inputBox">
            <label for="PIN">PIN:</label>
            <input type="password" id="PIN" name="PIN" required minlength="4" maxlength="4"/>
        </div>

        <input type="submit" name="Enviar" value="Registrar usuario">
    </form>
    <a href="registroUsuario.jsp" class="linkBox">¿No tienes cuenta? Puedes crear una cuenta aquí</a>
</div>
<jsp:include page="../WEB-INF/Utilidades/footer.jsp"/>

<script src="../js/validaciones.js"></script>
</body>
</html>


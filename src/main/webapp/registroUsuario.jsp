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
    <link rel="stylesheet" href="css/estilosForm.css">
    <title>Sistema bancario</title>
</head>
<body>
<div class="containerBox">
    <h2>Registro de usuario</h2>
    <form id="registroForm" action="/RegisterController" method="post">

        <div class="inputBox">
            <label for="Nombre">Nombre:</label>
            <input type="text" id="Nombre" name="Nombre" placeholder="Ingrese su nombre completo" required />
        </div>

        <div class="inputBox">
            <label for="Pais">País:</label>
            <select id="Pais" name="Pais" required>
                <option value="" disabled selected>Seleccione su país</option>
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
            <input type="text" id="NumTarjeta" name="NumTarjeta" placeholder="Ingrese su número de tarjeta de débito" required />
        </div>

        <div class="inputBox">
            <label for="PIN">PIN:</label>
            <input type="password" id="PIN" name="PIN" placeholder="Ingrese su PIN de 4 dígitos" required />
        </div>
        <div class="inputBox">
            <label for="Saldo">Saldo:</label>
            <input type="number" id="Saldo" name="Saldo" placeholder="Ingrese su saldo Inicial" required />
        </div>
        <div class="inputBox">
            <a>${mensaje}</a>
        </div>

        <input type="submit" name="Enviar" value="Registrar usuario">
    </form>

    <a href="login.jsp" class="linkBox">¿Ya tienes una cuenta? Puedes iniciar sesion aqui</a>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="js/validaciones.js"></script>
</body>
</html>


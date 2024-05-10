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
    <link rel="stylesheet" href="../css/estilosForm.css">
    <title>Sistema bancario</title>
</head>
<body>
<div class="containerBox">
    <h2>Registro de usuario</h2>
    <form action="/registroControlador" method="post">

        <div class="inputBox">
            <label for="Nombre">Nombre:</label>
            <input type="text" id="Nombre" name="Nombre" required/>
        </div>

        <div class="inputBox">
            <label for="Nombre">Pais:</label>
            <select name="Pais">
                <option value="Costa Rica">Costa Rica</option>
                <option value="El Salvador">El Salvador</option>
                <option value="Guatemala">Guatemala</option>
                <option value="Honduras">Honduras</option>
                <option value="Nicaragua">Nicaragua</option>
                <option value="Panamá">Panamá</option>
            </select>
        </div>

        <div class="inputBox">
            <label for="NumTarjeta">Numero de tarjeta de debito:</label>
            <input type="text" id="NumTarjeta" name="NumTarjeta" required/>
        </div>

        <div class="inputBox">
            <label for="PIN">PIN:</label>
            <input type="password" id="PIN" name="PIN" required/>
        </div>

        <input type="submit" name="Enviar" value="Registrar usuario">

        <a href="registroUsuario.jsp" class="linkBox">¿No tienes cuenta? Puedes crear una cuenta aquí </a>
    </form>
</div>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estilosForm.css">
    <title>Sistema bancario</title>
</head>
<body>
<div class="containerBox">
    <h2>Bienvenido usuario, Inicia sesion por favor</h2>
    <form id="LoginForm" action="/LoginController" method="post">

        <div class="inputBox">
            <label for="NumTarjeta">Numero de tarjeta de debito:</label>
            <input type="text" id="NumTarjeta" name="NumTarjeta"/>
        </div>

        <div class="inputBox">
            <label for="PIN">PIN:</label>
            <input type="password" id="PIN" name="PIN"/>
        </div>
        <div class="input-Box">
            <p>${mensaje}</p>

        </div>
        <input type="submit" name="Enviar" value="Iniciar sesion">

        <a href="registroUsuario.jsp" class="linkBox">¿No tienes cuenta? Puedes crear una cuenta aquí </a>

    </form>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<script src="js/validacionesLogin.js"></script>
</body>
</html>
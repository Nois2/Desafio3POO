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
    <form action="/loginControlador" method="get">

        <div class="inputBox">
            <label for="NumTarjeta">Numero de tarjeta de debito:</label>
            <input type="text" id="NumTarjeta" name="NumTarjeta"/>
        </div>

        <div class="inputBox">
            <label for="PIN">PIN:</label>
            <input type="password" id="PIN" name="PIN"/>
        </div>

        <input type="submit" name="Enviar" value="Iniciar sesion">

        <a href="Views/registroUsuario.jsp" class="linkBox">¿No tienes cuenta? Puedes crear una cuenta aquí </a>
    </form>
</div>

</body>
</html>
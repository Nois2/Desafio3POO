<%@ page import="Models.Beans.TarjetaBean" %><%--
  Created by IntelliJ IDEA.
  User: danie
  Date: 9/5/2024
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    TarjetaBean datos = (TarjetaBean) session.getAttribute("datosUsuario");
 if (datos != null) {}else {response.sendRedirect("index.jsp");}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Principal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link href="css/estilosForm.css">
</head>
<body>
<jsp:include page="WEB-INF/Utilidades/navbar.jsp"/>
<h2>Bienvenido ${datosUsuario.nombre}</h2>

<h3>Selecciona una accion a tramitar</h3>
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="btn-group d-flex" role="group">
                <a href="pagoServicios.jsp" class="buttonMenu"><span class="buttonSpan">Pagos</span></a>
                <a href="transferenciaNacional.jsp" class="buttonMenu"><span class="buttonspan">Transferencias nacionales</span></a>
                <a href="transferenciaInternacional.jsp" class="buttonMenu"><span class="buttonspan">Transferencias internacional</span>es</a>
            </div>
        </div>
    </div>
</div>

<jsp:include page="WEB-INF/Utilidades/footer.jsp"/>
<!-- Scripts de Bootstrap (jQuery y Popper.js) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<!-- Script de Bootstrap -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

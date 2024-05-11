<%@ page import="Models.Beans.TarjetaBean" %><%--
  Created by IntelliJ IDEA.
  User: Isaias
  Date: 10/5/2024
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%
    TarjetaBean datos = (TarjetaBean) session.getAttribute("datosUsuario");
    if (datos != null) {}else {response.sendRedirect("index.jsp");}
%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Desafio3POO</a>
        <form class="d-flex" role="search" action="/LogoutController" method="post">
            <input type="hidden" name="CerrarSesion" value="True">
            <button class="btn btn-outline-success" type="submit" value="Enviar">Cerrar Sesion</button>
        </form>
    </div>
</nav>

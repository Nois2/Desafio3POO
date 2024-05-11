
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio - Sesión Privada</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="css/estiloPrincipal.css">
</head>
<style>
    #pais{
        visibility: hidden;
    }
</style>
<body>
<%@include file="WEB-INF/Utilidades/navbar.jsp"%>
<p id="pais">${datosUsuario.pais}</p>
<header>
    ${usuario.nombre}
    ${usuario.numeroTarjeta}
    ${usuario.pin}
    ${usuario.pais}
    ${usuario.saldo}

    <h1>Bienvenido, <span id="nombreUsuario">${datosUsuario.nombre}</span></h1>
    <p>Tarjeta: <span id="numeroTarjeta">${datosUsuario.numeroTarjeta}</span></p>
    <p>Monto Disponible: <span id="montoDisponible">${datosUsuario.saldo}</span> Lempiras</p>
</header>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://static.vecteezy.com/system/resources/previews/000/351/671/non_2x/vector-payment-icon.jpg" class="card-img-top" alt="Pago de Servicios">
                <div class="card-body">
                    <h5 class="card-title">Pago de Servicios</h5>
                    <p class="card-text">Realiza pagos de servicios fácilmente.</p>
                    <a href="#" class="btn btn-primary">Pagar</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://media.ambito.com/p/2e5eb0c15fcfdd736d772eeb1c216db8/adjuntos/239/imagenes/038/099/0038099714/transferencia-dinerojpg.jpg" class="card-img-top" alt="Transferencia Nacional">
                <div class="card-body">
                    <h5 class="card-title">Transferencia Nacional</h5>
                    <p class="card-text">Transfiere dinero a cuentas nacionales.</p>
                    <a href="#" class="btn btn-primary">Transferir</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card">
                <img src="https://yosoyempleo.es/wp-content/uploads/2019/10/trans1-1.jpg" class="card-img-top" alt="Transferencia Internacional">
                <div class="card-body">
                    <h5 class="card-title">Transferencia Internacional</h5>
                    <p class="card-text">Realiza transferencias internacionales de manera segura.</p>
                    <a href="#" class="btn btn-primary">Transferir</a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="WEB-INF/Utilidades/footer.jsp"%>

</body>
</html>

$(document).ready(function() {
    $("#LoginForm").submit(function(event) {


        if (!validarTarjeta()) {
            event.preventDefault();
        }
        if (!validarPIN()) {
            event.preventDefault();
        }
    });


    function validarTarjeta() {
        var tarjetaValue = $("#NumTarjeta").val().trim();
        var errorTarjeta = $("#errorTarjeta");

        if (tarjetaValue.length !== 8 || isNaN(tarjetaValue)) {
            mostrarError(errorTarjeta, "El número de tarjeta de débito debe tener exactamente 8 dígitos.");
            return false;
        } else {
            ocultarError(errorTarjeta);
            return true;
        }
    }

    function validarPIN() {
        var pinValue = $("#PIN").val().trim();
        var errorPIN = $("#errorPIN");

        if (pinValue.length !== 4 || isNaN(pinValue)) {
            mostrarError(errorPIN, "El PIN debe tener exactamente 4 dígitos.");
            return false;
        } else {
            ocultarError(errorPIN);
            return true;
        }
    }

    function mostrarError(elemento, mensaje) {
        elemento.text(mensaje);
        elemento.css("display", "block");
        alert(mensaje);
    }

    function ocultarError(elemento) {
        elemento.text("");
        elemento.css("display", "none");
    }
});

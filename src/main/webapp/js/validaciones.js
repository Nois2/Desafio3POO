document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("registroForm");

    form.addEventListener("submit", function(event) {
        if (!validarNombre()) {
            event.preventDefault();
        }
        if (!validarTarjeta()) {
            event.preventDefault();
        }
        if (!validarPIN()) {
            event.preventDefault();
        }
    });

    function validarNombre() {
        const nombreInput = document.getElementById("Nombre");
        const nombreValue = nombreInput.value.trim();
        if (nombreValue.length < 5) {
            alert("El nombre debe tener al menos 5 caracteres.");
            return false;
        }
        return true;
    }

    function validarTarjeta() {
        const tarjetaInput = document.getElementById("NumTarjeta");
        const tarjetaValue = tarjetaInput.value.trim();
        if (tarjetaValue.length !== 8 || isNaN(tarjetaValue)) {
            alert("El número de tarjeta de débito debe tener exactamente 8 dígitos.");
            return false;
        }
        return true;
    }

    function validarPIN() {
        const pinInput = document.getElementById("PIN");
        const pinValue = pinInput.value.trim();
        if (pinValue.length !== 4 || isNaN(pinValue)) {
            alert("El PIN debe tener exactamente 4 dígitos.");
            return false;
        }
        return true;
    }
});

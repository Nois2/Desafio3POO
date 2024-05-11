document.getElementById('paymentForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const monto = parseFloat(document.getElementById('monto').value);
    if (isNaN(monto) || monto <= 0) {
        showMessage('El monto ingresado no es válido.');
        return;
    }

    const saldoActual = 1000; // Simulación de saldo actual
    processPayment(monto, saldoActual);
});

document.getElementById('cancelButton').addEventListener('click', function() {
    location.reload();
});

function showMessage(message) {
    document.getElementById('message').innerHTML = '<div class="alert alert-info">' + message + '</div>';
}

function processPayment(monto, saldoActual) {
    if (monto <= saldoActual) {
        saldoActual -= monto; // Reducción del saldo
        showMessage('La transacción se realizó con éxito. Saldo restante: ' + saldoActual);
    } else {
        showMessage('No tienes saldo suficiente para realizar la operación.');
    }
}

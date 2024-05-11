document.addEventListener('DOMContentLoaded', function () {
    const countrySelect = document.getElementById('country');
    const bankSelect = document.getElementById('bank');
    const cancelButton = document.getElementById('cancel');
    const confirmButton = document.getElementById('confirm');

    // Define las instituciones bancarias por país
    const banksByCountry = {
        'Costa Rica': ['Banco Nacional', 'Banco de Costa Rica', 'Banco Popular', 'Scotiabank'],
        'El Salvador': ['Banco Agrícola', 'Banco de América Central', 'Banco Cuscatlán'],
        'Guatemala': ['Banco Industrial', 'Banco G&T Continental', 'Banco de Guatemala'],
        'Honduras': ['Banco Ficohsa', 'Banco Atlántida', 'Banco de Occidente'],
        'Nicaragua': ['Banco de América Central', 'Banco Lafise Bancentro', 'Banco de Finanzas'],
        'Panamá': ['Banco Nacional de Panamá', 'Banistmo', 'BAC Credomatic']
    };

    // Llena el select de instituciones bancarias según el país seleccionado
    countrySelect.addEventListener('change', function () {
        const selectedCountry = countrySelect.value;
        const banks = banksByCountry[selectedCountry];
        bankSelect.innerHTML = '';
        banks.forEach(function (bank) {
            const option = document.createElement('option');
            option.textContent = bank;
            bankSelect.appendChild(option);
        });
    });

    // Cancela la operación de transferencia y retorna a la página principal
    cancelButton.addEventListener('click', function () {
        window.location.href = 'pagina_principal.html';
    });

    // Confirma la transferencia
    confirmButton.addEventListener('click', function () {
        // Aquí se verificaría el saldo disponible y se realizaría la transferencia
        // En este ejemplo, se muestra un mensaje de confirmación
        alert('Transferencia realizada correctamente');
        // Ofrece la oportunidad de hacer otra transacción o de retornar a la página principal
        const confirmAnother = confirm('¿Deseas realizar otra transferencia?');
        if (confirmAnother) {
            // Reinicia los selectores
            countrySelect.value = '';
            bankSelect.innerHTML = '';
        } else {
            window.location.href = 'pagina_principal.html';
        }
    });
});

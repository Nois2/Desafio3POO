document.addEventListener('DOMContentLoaded', function() {
    const bankSelect = document.getElementById('bank-select');
    const amountInput = document.getElementById('amount-input');
    const transferBtn = document.getElementById('transfer-btn');
    const messageDiv = document.getElementById('message');

    // Función para cargar los bancos disponibles según el país del usuario
    function loadBanks() {
        // Lógica para cargar los bancos desde el archivo CSV según el país del usuario
        // Aquí asumimos que el usuario está registrado en El Salvador
        const banks = ['Banco Agrícola', 'Banco Davivienda', 'Banco Cuscatlán'];

        // Limpiamos las opciones actuales del select
        bankSelect.innerHTML = '';

        // Agregamos las nuevas opciones
        banks.forEach(bank => {
            const option = document.createElement('option');
            option.textContent = bank;
            option.value = bank;
            bankSelect.appendChild(option);
        });
    }

    // Función para realizar la transferencia
    function performTransfer() {
        const selectedBank = bankSelect.value;
        const amount = amountInput.value;

        // Aquí iría la lógica para realizar la transferencia,
        // como enviar los datos al backend y procesar la respuesta

        // Simplemente mostramos un mensaje de éxito
        messageDiv.textContent = `Transferencia de $${amount} realizada exitosamente a ${selectedBank}.`;

        // Limpiamos los campos
        bankSelect.selectedIndex = 0;
        amountInput.value = '';
    }

    // Cargar los bancos disponibles al cargar la página
    loadBanks();

    // Listener para el botón de transferencia
    transferBtn.addEventListener('click', performTransfer);
});

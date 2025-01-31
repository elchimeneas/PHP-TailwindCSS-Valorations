document.querySelectorAll('.vote-button').forEach(button => {
    button.addEventListener('click', async function(event) {
        event.preventDefault(); // Evita el envío tradicional del formulario

        const form = this.closest('form');
        const formData = new FormData(form);
        const voteInput = form.querySelector('input[name="vote"]');
        const productId = formData.get("productId");
        const averageRateElement = document.getElementById(`averageRate-${productId}`);
        const responseDiv = document.getElementById('response') || createResponseDiv(form);

        // Validación de si se seleccionó un voto
        if (!voteInput.value) {
            responseDiv.innerHTML = '<p style="color: red;">Por favor, selecciona una estrella antes de votar.</p>';
            return;
        }

        try {
            const response = await fetch('vote.php', {
                method: 'POST',
                body: formData
            });

            const result = await response.json(); // Obtiene la respuesta como JSON

            console.log('Respuesta del servidor:', result);  // Depurar la respuesta del servidor

            if (result.success) {
                responseDiv.innerHTML = `<p style="color: green;">${result.message}</p>`;

                // Verifica que el elemento promedio exista antes de intentar actualizarlo
                if (averageRateElement) {
                    console.log("Elemento encontrado:", averageRateElement);  // Verifica que se encuentre el elemento
                    averageRateElement.innerText = `Average: ${result.averageRate}`;
                } else {
                    console.log("The average element was not found.");
                }

                    // Actualizar la valoración del usuario
                const userVoteElement = document.getElementById(`userVote-${productId}`);
                if (userVoteElement) {
                    userVoteElement.innerText = result.userVote;
                }
            } else {
                responseDiv.innerHTML = `<p style="color: red;">${result.message}</p>`;
            }
        } catch (error) {
            console.error('Error en la solicitud:', error);
            responseDiv.innerHTML = '<p style="color: red;">Hubo un problema al procesar tu voto.</p>';
        }
    });
});

// Función para crear el div de respuesta si no existe
function createResponseDiv(form) {
    const responseDiv = document.createElement('div');
    responseDiv.id = 'response';
    responseDiv.style.marginTop = '10px';
    form.appendChild(responseDiv);
    return responseDiv;
}

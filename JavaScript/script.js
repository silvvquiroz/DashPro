// Función para cargar un archivo HTML en un contenedor
function loadTemplate(url, containerId) {
    return fetch(url)
        .then(response => response.text())
        .then(html => {
            const container = document.getElementById(containerId);
            if (container) {
                container.innerHTML = html;
            } else {
                console.warn(`El contenedor con id '${containerId}' no existe en el DOM.`);
            }
        })
        .catch(error => console.warn('Error al cargar la plantilla:', error));
}

// Cargar el sidebar y la barra superior
document.addEventListener("DOMContentLoaded", function() {
    // Primero, cargar el sidebar
    loadTemplate('sidebar.html', 'sidebar').then(() => {
        // Asegurarse de que el sidebar se cargó antes de añadir los eventos
        const opFinanzas = document.getElementById("opFinanzas");
        if (opFinanzas) {
            opFinanzas.addEventListener("click", function() {
                // Cargar el contenido dinámico solo cuando se hace click
                loadTemplate('Finanzas.html', 'contenidoCentralVariable');
            });
        } else {
            console.warn("El elemento #opFinanzas no existe en el sidebar.");
        }
    });

    // Luego, cargar la barra superior
    loadTemplate('barrasuperior.html', 'barra-superior');
});


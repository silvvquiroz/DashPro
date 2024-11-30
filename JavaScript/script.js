// Función para cargar un archivo HTML en un contenedor
function loadTemplate(url, containerId) {
    fetch(url)
        .then(response => response.text())
        .then(html => {
            document.getElementById(containerId).innerHTML = html;
        })
        .catch(error => console.warn('Error al cargar la plantilla:', error));
}

// Cargar el sidebar y la barra superior
document.addEventListener("DOMContentLoaded", function() {
    loadTemplate('sidebar.html', 'sidebar-container');
    loadTemplate('barrasuperior.html', 'barra-superior-container');
});

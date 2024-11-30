document.addEventListener('DOMContentLoaded', function () {
    // Selecciona todos los divs con la clase 'sidebarPillCustomized' dentro del contenedor 'sidebarOpciones'
    const sidebarItems = document.querySelectorAll('#sidebarOpciones .sidebarPillCustomized');

    // Recuperar el ID del elemento seleccionado desde localStorage
    const selectedId = localStorage.getItem('selectedSidebarItem');

    // Si hay un ID seleccionado almacenado, agregar la clase 'seleccionado' al elemento correspondiente
    if (selectedId) {
        const selectedElement = document.getElementById(selectedId);
        if (selectedElement) {
            selectedElement.classList.add('seleccionado');
        }
    }

    // Recorre todos los elementos seleccionados
    sidebarItems.forEach(function (item) {
        // Añade un evento click a cada elemento
        item.addEventListener('click', function () {
            // Remover la clase 'seleccionado' de todos los elementos
            sidebarItems.forEach(function (el) {
                el.classList.remove('seleccionado');
            });

            // Añadir la clase 'seleccionado' al elemento que fue clicado
            this.classList.add('seleccionado');

            // Guardar el ID del elemento seleccionado en localStorage
            localStorage.setItem('selectedSidebarItem', this.id);
        });
    });
});

function cerrarSesion() {
    window.location.href = "Logout.aspx"; // Redirige a una página que maneje la lógica de cerrar sesión
}



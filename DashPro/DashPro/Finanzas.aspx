<%@ Page Title="" Language="C#" MasterPageFile="~/DashPro.Master" AutoEventWireup="true" CodeBehind="Finanzas.aspx.cs" Inherits="DashPro.Finanzas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContenido" runat="server">
    <style>
        /* Contenedor que cubre toda la página */
        .loading-container {
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background-color: rgba(0, 0, 0, 0.5); /* Fondo semi-transparente */
            z-index: 9999;
            display: none; /* Iniciar oculto */
        }

        /* Spinner centralizado */
        .spinner {
            font-size: 70px;
            color: #0179c3; /* Color de los circulitos */
            animation: spin 0.5s linear infinite; /* Movimiento rápido */
        }

        /* Animación de rotación para el spinner */
        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }
    </style>
    <form runat="server" class="container-fluid d-flex h-100 flex-column">

        <div class="container-fluid d-flex flex-row container-cabecera-finanzas">
            <div id="swOp1" class="card-principal d-flex flex-row justify-content-center align-content-center">
                <i class="fa-regular fa-money-bill-trend-up icon-card-grande icon-card-cabecera"></i>
                <div class="subtitulo-card-grande">
                    Reporte financiero mensual
                </div>
            </div>
            <div class="separador-vertical"></div>
            <div id="swOp2" class="card-principal d-flex flex-row justify-content-center align-content-center">
                <i class="fa-regular fa-list-dropdown icon-card-grande" style="color: #27a8e7"></i>
                <div class="subtitulo-card-grande">
                    Reporte detallado de gastos
                </div>
            </div>
        </div>

        <!-- opcion 2-->
        <div id="opcion2" class="container-fluid d-flex flex-column container-central">
            <div class="container-fluid d-flex flex-column align-content-center align-items-center">
                <div class="subtitulo-barras container-fluid">
                    Ingresar gastos
                </div>
                <div class="d-flex mb-3 gap-5">
                    <button id="agregarmanual" style="color: #107c42" class="bg-transparent border-0 boton-agregar"><i class="fa-solid fa-plus me-2"></i>Agregar manualmente</button>
                    <asp:FileUpload ID="FileUpload1" ClientIDMode="Static" runat="server" CssClass="bg-transparent border-0 boton-agregar" hidden onchange="redirectToGastosDetallado()" />
                    <button style="color: #107c42" class="bg-transparent border-0 boton-agregar" onclick="triggerFileUpload()"><i class="fa-solid fa-file-excel me-2"></i>Agregar desde archivo</button>
                </div>
                <div class="d-flex mb-3 gap-5">
                    <a href="GastosDetallado.aspx" style="color: #107c42" class="boton-procesar" onclick="startLoading()">
                        <i class="fa-solid fa-check me-2"></i>Procesar
                    </a>
                </div>
            </div>

            <div class="tabla-gastos d-flex flex-column justify-content-center align-content-center">
                <div class="cabecera-tabla container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                    <div class="normal-ancho">
                        Fecha
                    </div>
                    <div class="descripcion-ancho">
                        Descripción
                    </div>
                    <div class="normal-ancho">
                        Monto
                    </div>
                    <div class="normal-ancho">
                        Categoría
                    </div>
                    <div class="delete-ancho">
                    </div>
                </div>
                <hr />

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <select name="categorias" class="normal-ancho input-dashpro-tabla dropdown-categoria">
                                <option value="">Seleccionar</option>
                                <option value="Alimentos">Alimentos</option>
                                <option value="Ropa">Ropa</option>
                                <option value="Salidas">Salidas</option>
                                <option value="Transporte">Transporte</option>
                                <option value="Viajes">Viajes</option>
                            </select>
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <select name="categorias" class="normal-ancho input-dashpro-tabla dropdown-categoria">
                                <option value="">Seleccionar</option>
                                <option value="Alimentos">Alimentos</option>
                                <option value="Ropa">Ropa</option>
                                <option value="Salidas">Salidas</option>
                                <option value="Transporte">Transporte</option>
                                <option value="Viajes">Viajes</option>
                            </select>
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <select name="categorias" class="normal-ancho input-dashpro-tabla dropdown-categoria">
                                <option value="">Seleccionar</option>
                                <option value="Alimentos">Alimentos</option>
                                <option value="Ropa">Ropa</option>
                                <option value="Salidas">Salidas</option>
                                <option value="Transporte">Transporte</option>
                                <option value="Viajes">Viajes</option>
                            </select>
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <select name="categorias" class="normal-ancho input-dashpro-tabla dropdown-categoria">
                                <option value="">Seleccionar</option>
                                <option value="Alimentos">Alimentos</option>
                                <option value="Ropa">Ropa</option>
                                <option value="Salidas">Salidas</option>
                                <option value="Transporte">Transporte</option>
                                <option value="Viajes">Viajes</option>
                            </select>
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <select name="categorias" class="normal-ancho input-dashpro-tabla dropdown-categoria">
                                <option value="">Seleccionar</option>
                                <option value="Alimentos">Alimentos</option>
                                <option value="Ropa">Ropa</option>
                                <option value="Salidas">Salidas</option>
                                <option value="Transporte">Transporte</option>
                                <option value="Viajes">Viajes</option>
                            </select>
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- opcion1-->
        <div id="opcion1" class="container-fluid d-none flex-column container-central">
            <div class="container-fluid d-flex flex-column align-content-center align-items-center">
                <div class="subtitulo-barras container-fluid">
                    Gastos
                </div>
                <div class="d-flex mt-1 mb-5 gap-5">
                    <a href="GastosDetallado.aspx" style="color: #107c42" class="boton-procesar" onclick="startLoading()">
                        <i class="fa-solid fa-check me-2"></i>Procesar
                    </a>
                </div>
                <div class="d-flex mb-3 gap-5">
                    <button  style="color: #107c42" class="bg-transparent border-0 boton-agregar"><i class="fa-solid fa-plus me-2"></i>Agregar manualmente</button>
                    <asp:FileUpload ID="FileUpload2" ClientIDMode="Static" runat="server" CssClass="bg-transparent border-0 boton-agregar" hidden />
                    <button style="color: #107c42" class="bg-transparent border-0 boton-agregar" onclick="triggerFileUpload()"><i class="fa-solid fa-file-excel me-2"></i>Agregar desde archivo</button>
                </div>

            </div>

            <div class="tabla-gastos d-flex flex-column justify-content-center align-content-center">
                <div class="cabecera-tabla container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                    <div class="normal-ancho">
                        Fecha
                    </div>
                    <div class="descripcion-ancho">
                        Descripción
                    </div>
                    <div class="normal-ancho">
                        Monto
                    </div>
                    <div class="delete-ancho">
                    </div>
                </div>
                <hr />

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid d-flex flex-column align-content-center align-items-center">
                <div class="subtitulo-barras container-fluid">
                    Ingresos
                </div>
                <div class="d-flex mb-3 gap-5">
                    <button style="color: #107c42" class="bg-transparent border-0 boton-agregar"><i class="fa-solid fa-plus me-2"></i>Agregar manualmente</button>
                    <asp:FileUpload ID="FileUpload3" ClientIDMode="Static" runat="server" CssClass="bg-transparent border-0 boton-agregar" hidden />
                    <button style="color: #107c42" class="bg-transparent border-0 boton-agregar" onclick="triggerFileUpload()"><i class="fa-solid fa-file-excel me-2"></i>Agregar desde archivo</button>
                </div>
            </div>

            <div class="tabla-gastos d-flex flex-column justify-content-center align-content-center">
                <div class="cabecera-tabla container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                    <div class="normal-ancho">
                        Fecha
                    </div>
                    <div class="descripcion-ancho">
                        Descripción
                    </div>
                    <div class="normal-ancho">
                        Monto
                    </div>
                    <div class="delete-ancho">
                    </div>
                </div>
                <hr />

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="container-fluid d-none flex-column">
                    <div class="container-fluid d-flex flex-row align-content-center p-0 m-0 gap-3 justify-content-center">
                        <div>
                            <input type="date" class="normal-ancho input-dashpro-tabla pe-3" />
                        </div>
                        <div>
                            <input type="text" class="descripcion-ancho input-dashpro-tabla" />
                        </div>
                        <div>
                            <input type="text" class="normal-ancho input-dashpro-tabla" />
                        </div>
                        <div class="delete-ancho justify-content-center align-content-center align-items-center">
                            <i class="fa-solid fa-trash remove-icon"></i>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <script>
            function triggerFileUpload() {
                // Obtener el control de FileUpload de ASP.NET por su ID
                var fileUploadControl = document.getElementById('<%= FileUpload1.ClientID %>');

                // Simular el clic en el control FileUpload
                fileUploadControl.click();
            }

            document.addEventListener("DOMContentLoaded", function () {
                // Obtener el botón de "Agregar manualmente"
                const btnAgregar = document.getElementById('agregarmanual');
                const filas = document.querySelectorAll('.tabla-gastos .container-fluid.d-none');

                // Verificar si ya se ha guardado el estado de visibilidad en el localStorage
                const filasMostradas = JSON.parse(localStorage.getItem('filasMostradas')) || [];

                // Mostrar las filas que ya fueron mostradas antes
                filasMostradas.forEach(index => {
                    if (filas[index]) {
                        filas[index].classList.remove('d-none');
                        filas[index].classList.add('d-flex');
                    }
                });

                // Asignar el evento de clic al botón
                btnAgregar.addEventListener('click', function () {
                    // Verificar si hay filas disponibles
                    for (let i = 0; i < filas.length; i++) {
                        if (filas[i].classList.contains('d-none')) {
                            // Cambiar la clase de "d-none" a "d-flex" en la primera fila oculta
                            filas[i].classList.remove('d-none');
                            filas[i].classList.add('d-flex');

                            // Guardar el índice de la fila mostrada en el localStorage
                            filasMostradas.push(i);
                            localStorage.setItem('filasMostradas', JSON.stringify(filasMostradas));

                            break; // Solo cambiar la clase de una fila a la vez
                        }
                    }
                });

                // Añadir evento para los botones de remover
                const btnRemoveIcons = document.querySelectorAll('.remove-icon'); // Seleccionamos todos los botones de remover

                btnRemoveIcons.forEach(function (icon, index) {
                    icon.addEventListener('click', function () {
                        const fila = icon.closest('.container-fluid.d-flex'); // Buscamos la fila correspondiente

                        // Cambiar las clases para ocultar la fila
                        if (fila) {
                            fila.classList.remove('d-flex');
                            fila.classList.add('d-none');

                            // Actualizar el localStorage para reflejar el cambio
                            let filasMostradas = JSON.parse(localStorage.getItem('filasMostradas')) || [];
                            const filaIndex = filasMostradas.indexOf(index);

                            // Si el índice existe en filasMostradas, lo eliminamos
                            if (filaIndex > -1) {
                                filasMostradas.splice(filaIndex, 1);
                                localStorage.setItem('filasMostradas', JSON.stringify(filasMostradas));
                            }
                        }
                    });
                });
            });

            // Función para activar el spinner y el fondo transparente
            function startLoading() {
                var loadingContainer = document.getElementById('loadingContainer');
                loadingContainer.style.display = 'flex';  // Muestra el contenedor de carga

                // Aquí simula el procesamiento, y luego redirige al usuario después de 2 segundos
                setTimeout(function () {
                    loadingContainer.style.display = 'none'; // Oculta el spinner después de 2 segundos
                    window.location.href = 'GastosDetallado.aspx'; // Redirige después de cargar
                }, 2000); // Ajusta este tiempo para hacerlo más lento (2 segundos)
            }

            document.addEventListener("DOMContentLoaded", function () {
                const opcion1 = document.getElementById('swOp1');
                const opcion2 = document.getElementById('swOp2');
                const contOp1 = document.getElementById('opcion1');
                const contOp2 = document.getElementById('opcion2');

                opcion1.addEventListener('click', function () {
                    if (contOp1.classList.contains("d-none")) {
                        contOp1.classList.remove("d-none");
                        contOp1.classList.add("d-flex");

                        contOp2.classList.add("d-none");
                        contOp2.classList.remove("d-flex");
                    }
                });

                opcion2.addEventListener('click', function () {
                    if (contOp2.classList.contains("d-none")) {
                        contOp2.classList.remove("d-none");
                        contOp2.classList.add("d-flex");

                        contOp1.classList.add("d-none");
                        contOp1.classList.remove("d-flex");
                    }
                });

            });

            // Esta función se ejecuta cuando el usuario selecciona un archivo
            function redirectToGastosDetallado() {
                // Puedes agregar una validación aquí si quieres comprobar que se ha seleccionado un archivo
                var fileInput = document.getElementById('FileUpload1');
                if (fileInput.files.length > 0) { // Verifica si se ha seleccionado un archivo
                    window.location.href = "GastosDetallado.aspx"; // Redirige a la página deseada
                }
            }
        </script>

    </form>

    <!-- Contenedor de carga con el spinner -->
    <div class="loading-container" id="loadingContainer">
        <div class="spinner">
            <i class="fas fa-spinner fa-spin"></i>
            <!-- Spinner que gira -->
        </div>
    </div>
</asp:Content>

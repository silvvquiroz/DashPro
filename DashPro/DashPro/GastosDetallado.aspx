<%@ Page Title="" Language="C#" MasterPageFile="~/DashPro.Master" AutoEventWireup="true" CodeBehind="GastosDetallado.aspx.cs" Inherits="DashPro.GastosDetallado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContenido" runat="server">
    <div class="contenedor-general container-fluid d-flex flex-column w-100 h-100">
        <div class="container-fluid d-flex flex-row container-cabecera justify-content-center">
            <div class="card-cabecera d-flex flex-column align-content-center">
                <div class="d-flex flex-row align-items-center">
                    <i class="fa-solid fa-clothes-hanger icon-card-cabecera"></i>
                    <div>Ropa</div>
                </div>
                <div class="d-flex flex-row monto-container">
                    <div class="moneda">S/.</div>
                    <div class="monto">650</div>
                </div>
            </div>
            <div class="separador-vertical"></div>
            <div class="card-cabecera d-flex flex-column align-content-center">
                <div class="d-flex flex-row align-items-center">
                    <i class="fa-solid fa-utensils icon-card-cabecera" style="color: #107c42"></i>
                    <div>Alimentos</div>
                </div>
                <div class="d-flex flex-row monto-container">
                    <div class="moneda">S/.</div>
                    <div class="monto">1,250</div>
                </div>
            </div>
            <div class="separador-vertical"></div>
            <div class="card-cabecera d-flex flex-column align-content-center">
                <div class="d-flex flex-row align-content-center align-items-center">
                    <i class="fa-solid fa-car-side icon-card-cabecera" style="color: #27a8e7"></i>
                    <div>Transporte</div>
                </div>
                <div class="d-flex flex-row monto-container">
                    <div class="moneda">S/.</div>
                    <div class="monto">200</div>
                </div>
            </div>
            <div class="separador-vertical"></div>
            <div class="card-cabecera d-flex flex-column align-content-center">
                <div class="d-flex flex-row align-content-center align-items-center">
                    <i class="fa-solid fa-martini-glass-citrus  icon-card-cabecera" style="color: #d71848"></i>
                    <div>Salidas</div>
                </div>
                <div class="d-flex flex-row monto-container">
                    <div class="moneda">S/.</div>
                    <div class="monto">1,500</div>
                </div>
            </div>
            <div class="separador-vertical"></div>
            <div class="card-cabecera d-flex flex-column align-content-center">
                <div class="d-flex flex-row align-content-center align-items-center">
                    <i class="fa-solid fa-plane-departure icon-card-cabecera" style="color: #ffae0f"></i>
                    <div>Viajes</div>
                </div>
                <div class="d-flex flex-row monto-container">
                    <div class="moneda">S/.</div>
                    <div class="monto">2,500</div>
                </div>
            </div>
        </div>

        <div class="d-flex flex-row">
            <div class="container-barras d-flex flex-column container-central">
                <div class="subtitulo-barras">
                    Gasto mensual
                </div>
                <div class="monto-barras">
                    <div class="d-flex flex-row monto-container">
                        <div class="moneda">S/.</div>
                        <div class="monto">6,100</div>
                    </div>
                </div>

                <div class="d-flex flex-row">
                    <div class="barra-container">
                        <div class="barra ropa" style="height: 40%;" data-monto="S/: 650">
                            <span class="barra-label">Ropa</span>
                        </div>
                        <div class="barra alimentos" style="height: 60%;" data-monto="S/: 1,250">
                            <span class="barra-label">Alimentos</span>
                        </div>
                        <div class="barra transporte" style="height: 20%;" data-monto="S/: 200">
                            <span class="barra-label">Transporte</span>
                        </div>
                        <div class="barra salidas" style="height: 80%;" data-monto="S/: 1,500">
                            <span class="barra-label">Salidas</span>
                        </div>
                        <div class="barra viajes" style="height: 100%;" data-monto="S/: 2,500">
                            <span class="barra-label">Viajes</span>
                        </div>
                    </div>

                </div>

            </div>

            <div class="container-consejo p-0">
                <div class="card-alerta">
                    <div class="card-content">
                        <div class="icon-alerta">
                            <i class="fa-solid fa-exclamation-circle"></i>
                        </div>
                        <div class="card-text">
                            <h3 class="titulo-alerta">¡Este mes tus gastos de viajes han excedido el presupuesto establecido!</h3>
                            <p class="consejo-alerta">Es importante llevar un control sobre tus gastos. Considera reducir los gastos de ocio y ahorrar más para el futuro.</p>
                        </div>
                        <div class="action-button">
                            <button class="btn-registrar">Registrar nuevo mes</button>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="d-flex flex-row p-0 justify-content-center gap-5">
           <div class="boton">
               Ver meses anteriores
           </div>
            <div class="boton">
                Ver gastos registrados
            </div>
        </div>

    </div>
</asp:Content>

document.addEventListener("DOMContentLoaded", function() {
    const barraropa = document.getElementById("barra-ropa");
    const barraalimentos = document.getElementById("barra-alimentos");
    const barratransporte = document.getElementById("barra-transporte");
    const barrasalidas = document.getElementById("barra-salidas");
    const barraviajes = document.getElementById("barra-viajes");

    const chartropa = document.getElementById("linear-ropa");
    const chartalimentos = document.getElementById("linear-alimentos");
    const charttransporte = document.getElementById("linear-transporte");
    const chartsalidas = document.getElementById("linear-salidas");
    const chartviajes = document.getElementById("linear-viajes");

    barraropa.addEventListener("click", function() {
        if (chartropa.classList.contains("d-none")) {
            chartropa.classList.remove("d-none");
            chartropa.classList.add("d-flex");
        }
        if (chartalimentos.classList.contains("d-flex")) {
            chartalimentos.classList.add("d-none");
            chartalimentos.classList.remove("d-flex");
        }
        if (charttransporte.classList.contains("d-flex")) {
            charttransporte.classList.add("d-none");
            charttransporte.classList.remove("d-flex");
        }
        if (chartsalidas.classList.contains("d-flex")) {
            chartsalidas.classList.add("d-none");
            chartsalidas.classList.remove("d-flex");
        }
        if (chartviajes.classList.contains("d-flex")) {
            chartviajes.classList.add("d-none");
            chartviajes.classList.remove("d-flex");
        }
    });

    barraalimentos.addEventListener("click", function() {
        if (chartalimentos.classList.contains("d-none")) {
            chartalimentos.classList.add("d-flex");
            chartalimentos.classList.remove("d-none");
        }
        if (chartropa.classList.contains("d-flex")) {
            chartropa.classList.remove("d-flex");
            chartropa.classList.add("d-none");
        }
        if (charttransporte.classList.contains("d-flex")) {
            charttransporte.classList.add("d-none");
            charttransporte.classList.remove("d-flex");
        }
        if (chartsalidas.classList.contains("d-flex")) {
            chartsalidas.classList.add("d-none");
            chartsalidas.classList.remove("d-flex");
        }
        if (chartviajes.classList.contains("d-flex")) {
            chartviajes.classList.add("d-none");
            chartviajes.classList.remove("d-flex");
        }
    });

    barratransporte.addEventListener("click", function() {
        if (charttransporte.classList.contains("d-none")) {
            charttransporte.classList.add("d-flex");
            charttransporte.classList.remove("d-none");
        }
        if (chartropa.classList.contains("d-flex")) {
            chartropa.classList.remove("d-flex");
            chartropa.classList.add("d-none");
        }
        if (chartalimentos.classList.contains("d-flex")) {
            chartalimentos.classList.add("d-none");
            chartalimentos.classList.remove("d-flex");
        }
        if (chartsalidas.classList.contains("d-flex")) {
            chartsalidas.classList.add("d-none");
            chartsalidas.classList.remove("d-flex");
        }
        if (chartviajes.classList.contains("d-flex")) {
            chartviajes.classList.add("d-none");
            chartviajes.classList.remove("d-flex");
        }
    });

    barrasalidas.addEventListener("click", function() {
        if (chartsalidas.classList.contains("d-none")) {
            chartsalidas.classList.add("d-flex");
            chartsalidas.classList.remove("d-none");
        }
        if (chartropa.classList.contains("d-flex")) {
            chartropa.classList.remove("d-flex");
            chartropa.classList.add("d-none");
        }
        if (chartalimentos.classList.contains("d-flex")) {
            chartalimentos.classList.add("d-none");
            chartalimentos.classList.remove("d-flex");
        }
        if (charttransporte.classList.contains("d-flex")) {
            charttransporte.classList.add("d-none");
            charttransporte.classList.remove("d-flex");
        }
        if (chartviajes.classList.contains("d-flex")) {
            chartviajes.classList.add("d-none");
            chartviajes.classList.remove("d-flex");
        }
    });

    barraviajes.addEventListener("click", function() {
        if (chartviajes.classList.contains("d-none")) {
            chartviajes.classList.add("d-flex");
            chartviajes.classList.remove("d-none");
        }
        if (chartropa.classList.contains("d-flex")) {
            chartropa.classList.remove("d-flex");
            chartropa.classList.add("d-none");
        }
        if (chartalimentos.classList.contains("d-flex")) {
            chartalimentos.classList.add("d-none");
            chartalimentos.classList.remove("d-flex");
        }
        if (charttransporte.classList.contains("d-flex")) {
            charttransporte.classList.add("d-none");
            charttransporte.classList.remove("d-flex");
        }
        if (chartsalidas.classList.contains("d-flex")) {
            chartsalidas.classList.add("d-none");
            chartsalidas.classList.remove("d-flex");
        }
    });
});
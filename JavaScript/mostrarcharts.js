document.addEventListener("DOMContentLoaded", function() {
    const barraropa = document.getElementById("barra-ropa");
    const barraalimentos = document.getElementById("barra-alimentos");
    const chartropa = document.getElementById("linear-ropa");
    const chartalimentos = document.getElementById("linear-alimentos");

    barraropa.addEventListener("click", function() {
        if (chartropa.classList.contains("d-none")) {
            chartropa.classList.remove("d-none");
            chartropa.classList.add("d-flex");
        }
        if (chartalimentos.classList.contains("d-flex")) {
            chartalimentos.classList.add("d-none");
            chartalimentos.classList.remove("d-flex");
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
        
    });
});
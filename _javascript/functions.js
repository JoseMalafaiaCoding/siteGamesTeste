
window.onload = function () {
    var botaoMenu = document.getElementById('botaoMenu');
    botaoMenu.addEventListener('click', toggleMenu);
    function toggleMenu() {
        var navMenu = document.getElementById('menuLateral');
        if (navMenu.style.display == "") {
            navMenu.style.display = "block";
            botaoMenu.innerText = "Esconder menu";
        } else {
            navMenu.style.display = "";
            botaoMenu.innerText = "Mostrar menu";
        }
    }

    var figuraHardware = document.getElementsByClassName('figuraHardware');

    for (var i = 0; i < figuraHardware.length; i++) {
        figuraHardware[i].addEventListener('mouseenter', escurecerFundo);
        function escurecerFundo() { //Escurece a pagina ao entrar com o mouse em uma figura
            document.getElementsByTagName('body')[0].style.background = "rgba(145, 145, 145, .6)";
            document.getElementsByTagName('div')[0].style.background = "rgba(145, 145, 145, .6)";
        }
    }
    for (var j = 0; j < figuraHardware.length; j++) {
        figuraHardware[j].addEventListener('mouseout', clarearFundo)
        function clarearFundo() {
            document.getElementsByTagName('body')[0].style.background = "#dde0e7";
            document.getElementsByTagName('div')[0].style.background = "white";
        }
    }
}
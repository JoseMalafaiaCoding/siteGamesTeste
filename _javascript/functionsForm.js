
    function calcularPreco(modelo) { 
        var preco = document.getElementById('idPreco');
        var quantidade = document.getElementById('idQtd');
        if (modelo == 'standard') {
            preco.value = quantidade.value * 5000;
        }else{
            preco.value = quantidade.value * 4500;
        }
        
    }
    function mudarImagemProduto(imgModelo){
        var img = document.querySelector('div#imagemModelo img');
        if(imgModelo == 'standard'){
            img.src = '../_imagens-form-compra/ps5-standard.png';
        }else{
            img.src = '../_imagens-form-compra/ps5-digital.jpg'
        }
    }
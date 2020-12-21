class HomePage < Base
  
    def initialize
        @buscaUm        =   CONFIG['buscaProduto']['produtoUm']
        @buscaDois      =   CONFIG['buscaProduto']['produtoDois']
        @buscaTres      =   CONFIG['buscaProduto']['produtoTres']
        @buscaQuatro    =   CONFIG['buscaProduto']['produtoQuatro']
        @buscaCinco     =   CONFIG['buscaProduto']['produtoCinco']
    end

    def buscarProdutos
        find("input[id='search']").set @buscaUm
        $produtoSelecionado = find("div[data-index='2']").value
    end
    
    def selecionarProduto
        find("div[data-index='2']").click
    end

    def selecionarProdutoDois
        find("input[id='search']").set @buscaDois 
        $produtoDois = find("div[data-index='0']").value
        find("div[data-index='0']").click
    end

    def selecionarProdutoTres
        find("input[id='search']").set @buscaTres
        $produtoTres = find("div[data-index='1']").value
        find("div[data-index='1']").click
    end

    def selecionarProdutoQuatro
        find("input[id='search']").set @buscaQuatro
        $produtoQuatro = find("div[data-index='2']").value
        find("div[data-index='2']").click
    end

    def selecionarProdutoCinco
        find("input[id='search']").set @buscaCinco
        $produtoCinco = find("div[data-index='3']").value
        find("div[data-index='3']").click
    end
end

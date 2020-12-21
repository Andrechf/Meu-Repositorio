class DetalheProdutosPage < Base

    def validaCampos
        $marca = find("a[href='/royal-canin']").value
        $valorAtual = find("div[class='price-current']").value
        $valorAssinante = find("span[class='price-subscriber']").value
    end

    def adicionarCarrinho
        find("button[id='adicionarAoCarrinho']").click
        sleep 3
    end
end


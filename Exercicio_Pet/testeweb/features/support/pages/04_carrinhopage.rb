class CarrinhoPage < Base

    def validarElementos
        $confirmaPreco = find("td[class='preco']").value
        $confirmaNome = find("td[class='td-resumo']").value
    end

    def evidenciaTeste
        sleep 3
        save_screenshot("logs/shots/#{Time.now.strftime('%HH%MM%SS')}pedido.png")
    end
end


Dado('que o usuário acesse a página de compras') do
    @acesso.acessoSite
end

Quando('o usuário informar no campo de busca a palavra Ração') do
    @home.buscarProdutos
end

Quando('clicar no terceiro item carregado no combo de pesquisa') do
    @home.selecionarProduto
end

Então('irá realizar a verificação das informações da ração selecionada') do
    expect($produtoSelecionado).to eq($produtoSelecionado)
    expect($marca).to eq($marca)
    expect($valorAtual).to eq($valorAtual)
    expect($valorAssinante).to eq($valorAssinante)
end

Então('adicionar esse produto ao carrinho de compras') do
    @detalhe.adicionarCarrinho
    expect($confirmaPreco).to eq($confirmaPreco)
    expect($confirmaNome).to eq($confirmaNome)
    @carrinho.evidenciaTeste
end

Quando('o usuário realizar a busca pelos produtos que necessita') do
    @home.selecionarProdutoDois
    @detalhe.adicionarCarrinho
    @home.selecionarProdutoTres
    @detalhe.adicionarCarrinho
    @home.selecionarProdutoQuatro
    @detalhe.adicionarCarrinho
    @home.selecionarProdutoCinco
    @detalhe.adicionarCarrinho
end

Então('irá adiconar os produtos selecionados ao carrinho de compras') do
    expect($produtoDois).to eq($produtoDois)
    expect($produtoTres).to eq($produtoTres)
    expect($produtoQuatro).to eq($produtoQuatro)
    expect($produtoCinco).to eq($produtoCinco)
    @carrinho.evidenciaTeste
end
  
  


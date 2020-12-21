Before do
    @acesso = AccessPage.new
    @home = HomePage.new
    @detalhe = DetalheProdutosPage.new
    @carrinho = CarrinhoPage.new 
end
  
After do
    Capybara.reset_sessions!
end



#language: pt

Funcionalidade: Realizar Pesquisa pelo campo de Busca
    Sendo um usuário do site Petz, desejo realizar consultas utilizando
    o buscador da página

Contexto: Acessar o site de compras Petz
    Dado que o usuário acesse a página de compras

@simples
Cenário: Realizar Consulta Simples de Ração
    Quando o usuário informar no campo de busca a palavra Ração
    E clicar no terceiro item carregado no combo de pesquisa
    Então irá realizar a verificação das informações da ração selecionada
    E adicionar esse produto ao carrinho de compras 

@massa
Cenário: Adicionar Vários Produtos ao Carrinho
    Quando o usuário realizar a busca pelos produtos que necessita
    Então irá adiconar os produtos selecionados ao carrinho de compras


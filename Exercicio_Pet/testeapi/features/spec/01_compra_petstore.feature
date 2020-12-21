#language: pt

Funcionalidade: Realizar Cadastro e Compra de Animais de Estimação
    Sendo usuário da plataforma Petstore, desejo validar a inclusão e  
    listagem de usuários e pets no sistema

@simples
Cenário: Criação e Venda Simples
    Dado que chame a api post para criar um usuário
    E chame a api post para criar um pet
    Quando realizar a venda do pet para o usuário
    Então chamo a api get para validar se está correto


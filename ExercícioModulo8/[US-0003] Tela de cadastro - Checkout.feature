#language: pt

Funcionalidade: [US-0003] Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro   
    Para finalizar minha compra

    Critérios de Aceitação:
    1. Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
    2. Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    3. Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 

    Contexto: Acessar a Página de cadastro
        Dado que estou a página de cadastro

    Cenário: Verificar se todos os campos com asteriscos são obrigatórios
        Quando preencho os campos obrigatórios
        Mas deixo algum campo obrigatório em branco
        Então sistema apresenta a seguinte mensagem "Atenção, campos obrigatórios não foram preenchidos!"

    Cenário: Verificar se o formato do e-mail é válido
        Quando preencho os campos obrigatórios
        Mas insiro o e-mail "teste78454.com.br"
        Então sistema apresenta a seguinte mensagem "Atenção, e-mail preenchido inválido!"

    Cenário: Cadastro realizado com sucesso
        Quando preencho todos os campos obrigatórios corretamente
        Então sou redirecionado para tela de checkout

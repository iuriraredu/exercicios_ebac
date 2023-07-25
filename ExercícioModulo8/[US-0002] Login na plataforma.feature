#language: pt

Funcionalidade: [US-0002] Login na plataforma  
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma  
    Para visualizar meus pedidos

    Critérios de Aceitação:
    1. Ao inserir dados válidos deve ser direcionado para a tela de checkout
    2. Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
    
    Contexto: Acessar a Página de login
        Dado que estou an página de login

    Cenário: Autenticação com usuário válido
        Quando insiro credenciais válidas 
        Então sou redirecionado para a tela de checkout
    
    Cenário: Autenticação com usuário válido
        Quando insiro credenciais inválidas
        Então recebo mensagem de alerta "Usuário ou senha inválidos"

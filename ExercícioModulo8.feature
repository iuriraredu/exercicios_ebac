#language: pt

Funcionalidade: [US-0001] Configurar produto   
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Critérios de Aceitação:
    1. Seleções de cor, tamanho e quantidade devem ser obrigatórios
    2. Deve permitir apenas 10 produtos por venda
    3. Quando eu clicar no botão “limpar” deve voltar ao estado original

    Contexto: Acessar a Página do Produto
        Dado que acesso a página de um produto

    Esquema do Cenário: Garantir que foi selecionado cor, tamanho e quantidade do produto
        Quando seleciono "<Cor>" e tamanho "<Tamanho>"
        E insiro "<Quantidade>"
        Então recebo a "<Mensagem>" de alerta
        
        Exemplos:
            | Cor    | Tamanho | Quantidade | Mensagem                               |
            | Blue   | S       |            | Quantidade não informada               |
            |        | XL      | 5          | Cor não informada                      |
            | Red    |         | 2          | Tamanho não informada                  |
            | Orange | M       | 11         | Permitido apenas 10 itens por produto. |

    Cenário: Limpar configurações do produto
        Quando seleciono cor, tamanho e quantidade
        E clico no botão "Limpar"
        Então volta para as seleções originais

    Cenário: Seleção de produto válido
        Quando seleciono "Blue" e tamanho "XL"
        E insiro "1"
        Então sou redirecionado para a tela de checkout

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

    Cenário: Cadastro de usuário com sucesso
        Quando preencho todos os campos com os dados corretos
        Então sou redirecionado para a tela de checkout

    Cenário: Verificar se todos os campos com asteriscos são obrigatórios
        Quando preencho os campos com os dados:
            | Nome*   | Sobrenome* | Empresa* | País1*   | Endereço1*  | Endereço2*  | Cidade*     | CEP*     | Telefone*   | Email*                |
            | ""      | "Oliveira" | "XPTO"   | "Brasil" | "Av Brasil" | "171"       | "São Paulo" | 07700000 | 11959595959 | "teste123@tst.com.br" |
            | "João"  | ""         | "YXPT"   | "Brasil" | "R Vitória" | "280"       | "Caieiras"  | 07700000 | 11959595959 | "teste123@tst.com.br" |
            | "Maria" | "Silva"    | ""       | "Brasil" | "Al Santos" | "7 Apto 2"  | "Jundiaí"   | 07700000 | 11959595959 | "teste123@tst.com.br" |
            | "Mario" | "Souza"    | "ZYXP"   | ""       | "Tr do Sol" | "22"        | "Campinas"  | 07700000 | 11959595959 | "teste123@tst.com.br" |
            | "Dário" | "Rocha"    | "XPTO"   | "Brasil" | ""          | "150"       | "Belém"     | 07700000 | 11959595959 | "teste123@tst.com.br" |
            | "Délio" | "Lisboa"   | "XPTO"   | "Brasil" | "Pc da Luz" | ""          | "Blumenau"  | 07700000 | 11959595959 | "teste123@tst.com.br" |
            | "Diego" | "Ramos"    | "XPTO"   | "Brasil" | "R Aliança" | "33"        | ""          | 07700000 | 11959595959 | "teste123@tst.com.br" |
            | "Paulo" | "Assunção" | "XPTO"   | "Brasil" | "QD 1 LT 3" | "BL C Atp 3"| "Brasília"  |          | 11959595959 | "teste123@tst.com.br" |
            | "Pedro" | "Lima"     | "XPTO"   | "Brasil" | "R Sertão"  | "57 Cs 3"   | "Nazaré"    | 07700000 |             | "teste123@tst.com.br" |
            | "Ian"   | "Lourenço" | "XPTO"   | "Brasil" | "R Pedro II"| "87 LT 2"   | "Romaria"   | 07700000 | 11959595959 |                       |
            | "Roger" | "Alencar"  | "XPTO"   | "Brasil" | "Tr da Lua" | "64"        | "Fátima"    | 07700000 | 11959595959 | "teste123.com.br"     |
        Então sistema apresenta a seguinte mensagem:
            | Mensagem                                              |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, campos obrigatórios não foram preenchidos!" |
            | "Atenção, e-mail preenchido inválido!"                |

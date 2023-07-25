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

#language:pt

Funcionalidade: Buscar por marca

@buscaVeiculo
Cenario: Realizar busca de uma determinado veiculo
    Quando realizo acesso ao portal da webmotors
    Então realizo uma busca pela marca "Honda", modelo "CITY" e versão "1.5 EXL 16V FLEX 4P MANUAL"

@listagemLoja
Cenario: Realizar a listagem de estoque de uma loja
Quando acesso uma determinada loja "estoque_Mazola"
Entao realizo a listagem do estoque encontrado
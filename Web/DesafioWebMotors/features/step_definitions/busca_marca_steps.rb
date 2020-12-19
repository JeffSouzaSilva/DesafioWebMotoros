Quando('realizo acesso ao portal da webmotors') do
    @busca_page.acessarHome
  end
  
  Então('realizo uma busca pela marca {string}, modelo {string} e versão {string}') do |marca, modelo, versao|
    @busca_page.buscar(marca, modelo, versao)
  end

  Quando('acesso uma determinada loja {string}') do |loja|
    @busca_page.acessarLoja
  end

  Entao ('realizo a listagem do estoque encontrado') do
    @busca_page.listagemEstoque
  end
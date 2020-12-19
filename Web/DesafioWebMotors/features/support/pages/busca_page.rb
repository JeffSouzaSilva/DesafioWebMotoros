class BuscaPage
  include Capybara::DSL

  def acessarHome
    visit "/"
  end

  def buscar(marca, modelo, versao)
    find("#searchBar").set marca
    first("div.SearchBar__results__result__name", text: marca).click
    first(".Filters__line--icon--close").click 
    sleep 3
    find(".CardMake", text: marca).click
    sleep 3
    first(".Filters__line--icon--right", text: "Todos os modelos").click
    sleep 3
    find(".Form__field__filled").set modelo
    sleep 3
    find(".Filters__line__result", text: modelo).click
    sleep 3
    first(".Filters__line--icon--right", text: "Todas as versões").click
 
    first(".Form__field").set versao
 
    first(".Filters__line__result", text: versao).click
    sleep 3
  end

  def acessarLoja
    visit "/carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concession%C3%A1ria%7Cloja"
  end

  def listagemEstoque
    find(".sc-htoDjs", text: "OK").click

    status = false

    while status == false
      begin
        execute_script('window.scrollTo(0, 50000);', wait: 1)
        assert_text("Estamos carregando", wait:10)
        assert_no_text("Estamos carregando", wait:10)

      rescue
        @quantidadeVeiculos = all(".sc-iyvyFf").count
        puts "Retornaram #{@quantidadeVeiculos} carros"
        status = true
      end

    end
end
end
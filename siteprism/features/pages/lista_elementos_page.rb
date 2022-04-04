class ListaElementos < SitePrism::Page
    set_url '/buscaelementos/table'

    #pega linha
    elements :linha, 'tr > th'

    #pega tabela
    elements :tabela, 'tr > td'

    def elemento_tabela (elemento)
        tabela[elemento].text
    end

    def imprime_tabela
        tabela.each do |elemento|
            elemento.text
        end
    end

end
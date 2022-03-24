class Iframe < SitePrism::Page

    element :first_name, '#first_name'
    element :last_name, '#last_name'
    
end

class PaginaPadrao < SitePrism::Page
    set_url '/mudancadefoco/iframe'
    iframe :campos, Iframe, '#id_do_iframe'
    # exemplo:
    #http://shipit.resultadosdigitais.com.br/blog/como-estruturar-page-objects-utilizando-siteprism/
    def preencher (nome, sobrenome)
        campos do |frame|
            frame.first_name.set(nome)
            frame.last_name.set(sobrenome)
        end
    end 
end
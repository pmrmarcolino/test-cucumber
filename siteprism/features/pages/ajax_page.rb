#foi necessária a inclusão por conta do ajax com expect
include RSpec::Matchers

class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'

    element :botao, '#teste'
    element :mensagem, '#div1'
    
    def clicar
        botao.click
        #wait_until_botao_submit
    end

    def sucesso(message)
        #wait_until_mensagem_visible
        expect(mensagem.text).to eq(message)
    end
end
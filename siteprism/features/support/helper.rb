require "capybara-screenshot"

module Helper
    def scheenshot(arquivo,resultado)
        caminho_arquivo = "results/screenshots/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{arquivo}.png"
        page.save_screenshot(foto)
        attach foto, 'image/png'
        #embed(foto)
    end
end
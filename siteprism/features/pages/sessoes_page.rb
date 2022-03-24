class Sessao < SitePrism::Section
    element :youtube, 'a[href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA"]'
end

class Pagina < SitePrism::Page
    set_url '/buscaelementos/radioecheckbox'
    section :navbar, Sessao, 'div[class="nav-wrapper"]'

    def clicar
        navbar.youtube.click
    end
end
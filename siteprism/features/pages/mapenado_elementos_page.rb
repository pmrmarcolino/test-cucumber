class MapeandoElementos < SitePrism::Page
    set_url '/users/new'

    element :nome, '#user_name'
    
    def preencher (name)
        nome.set name
    end
end
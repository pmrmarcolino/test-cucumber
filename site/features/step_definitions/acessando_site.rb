Quando ("acesso a url") do
    #pega no apphost
    visit ("treinamento/home")
end

Então ("eu verifico se estou na pagina correta") do
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end
Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    find('.activator').hover
end

Então('deve exibir uma mensagem de sucesso') do
    has_text?('Você usou o mouse hover!')
end
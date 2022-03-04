Quando('clico no botão') do
    visit '/buscaelementos/botoes'
    find_by_id('teste').click()
end
  
Então('verifica se o texto apareceu na tela com sucesso') do
    sucesso = find_by_id('div1')
    expect(sucesso.text).to eq("Você Clicou no Botão!")
    page.assert_text('Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
end
  
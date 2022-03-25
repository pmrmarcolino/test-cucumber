Quando('clico no botão') do
    home.load
    home.clicar
    sleep(5)
end
  
Então('verifico se apareceu') do
    home.sucesso('Você Clicou no Botão!')
end
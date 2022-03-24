Quando('clico no botão') do
   @page = AjaxPage.new
   @page.load
   @page.clicar
   sleep(5)
end
  
Então('verifico se apareceu') do
    @page.sucesso('Você Clicou no Botão!')
end
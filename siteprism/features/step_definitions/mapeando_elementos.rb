Quando('preencho o formulário') do
    page = MapeandoElementos.new
    page.load
    page.preencher("Maria")
end
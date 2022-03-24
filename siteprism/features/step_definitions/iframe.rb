Quando('clico em um iframe') do
    iframe = PaginaPadrao.new
    iframe.load
    iframe.preencher("Maria", "Dias")
end
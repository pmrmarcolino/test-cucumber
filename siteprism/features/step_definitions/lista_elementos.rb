Quando('mapeio uma tabela') do
  @list = ListaElementos.new
  @list.load
  @list.elemento_tabela(0)
  @list.imprime_tabela
end
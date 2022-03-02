Quando('acesso a url de botoes') do
    visit '/buscaelementos/botoes'
  end
  
  Então('verifico se encontrei os elementos') do
    #page.all(:css, 'btn')
    find('#teste')
    find_by_id('teste')
    #find_button(class: 'btn red')
    find_link(href: "https://consultoriabatista.herokuapp.com/")
  end
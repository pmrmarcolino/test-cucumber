Dado('que acesso o site') do
    visit '/buscaelementos/dropdowneselect'
end
  
Quando('clico no recurso') do
    # buscar por classe
    find('.btn.dropdown-button').click()
    find_by_id('dropdown3').click
    # Uma forma de fazer o select
    find_by_id('dropdown').click
    find('option[value="2"]').click
    #Uma forma melhor de fazer o select
    select 'Chrome', from: 'dropdown'
    #Ou ainda
    #find_by_id('dropdown').find('option[value="3"]').select_option
end
  
Então('preencho o autocomplete') do
    visit '/widgets/autocomplete'
    find_by_id('autocomplete-input').set('rio d')
    find('ul[id^="autocomplete-options-"]').click()
    sleep(5)
end
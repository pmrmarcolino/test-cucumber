Quando('eu faço utilizo o teclado') do
    visit '/users/new'
    find_by_id('user_name').send_keys(:page_down)
    find('input[value="Criar"]').send_keys(:enter)
end
Quando('eu faço cadastro') do
    visit 'users/new'
    find_by_id('user_name').set('Maria')
    fill_in(id: 'user_lastname', with: 'Dias')
    find('#user_email').send_keys('teste@mock.com')
    find_by_id('user_address').set('Rua Paraguaçu, 123')
    find_by_id('user_university').set('UFMS')
    find_by_id('user_profile').set('Engenheira')
    find_by_id('user_gender').set('F')
    find_by_id('user_age').set('28')
    find('input[value="Criar"]').click()
end
  
Então('verifico se fui cadastrado') do
    sucesso = find_by_id('notice')
    expect(sucesso.text).to eq("Usuário Criado com sucesso")
end
  
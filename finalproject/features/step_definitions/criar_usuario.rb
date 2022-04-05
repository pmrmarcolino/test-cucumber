Quando('cadastro o usuário') do
    user.load
    user.forms("Maria","Dias", "user@mock.com","","","","","")
end
  
Então('verifico se foi cadastrado com sucesso') do
    user.forms_success("Usuário Criado com sucesso")
end
  
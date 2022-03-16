#language: pt

@e2e
Funcionalidade: Cadastro de usuário

Cenário: Cadastrar com sucesso
    Quando cadastro o usuário
    Então verifico se o usuário foi cadastrado

Cenário: Editar usuário
    Quando eu edito o usuário
    Então verifico se o usuário foi editado
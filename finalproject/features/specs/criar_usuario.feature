#language: pt

@criar_usuario
Funcionalidade: Criar usuário

@criar_usuario_sucesso
Cenário: Cadastrar com sucesso
    Quando cadastro o usuário
    Então verifico se foi cadastrado com sucesso
#language: pt



@links_botoes
Funcionalidade: Cliques

Cenario: Clicar em um botão
    Quando acesso o <site>
    Então clico nos <botoes>
Exemplos:
| site                   | botoes                |
#|"/"                     |"Começar Automação Web"|
#|"/buscaelementos/botoes"|"btn waves-light"      |
|"/buscaelementos/botoes"|"a[id='teste']"      |
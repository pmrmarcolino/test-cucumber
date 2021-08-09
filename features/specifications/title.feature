Feature: Retorno com sucesso dos titulos de filme
Ao realizar requisição, deve ser retornado com sucesso.

Scenarios: Titulos de filmes disponíveis
    Given o endereço da API
    When realizar a requisição com sucesso
    Then deve ser pego o titulo de cada resultado de filmes, com "200"


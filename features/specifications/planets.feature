Feature: Retorno com sucesso dos planetas
Ao realizar requisição, deve ser retornado com sucesso.

Scenarios: Total de planetas
    Given o endereço da API
    When realizar a requisição com sucesso
    Then deve ser pego o numero total de planetas, com 200

Scenarios: Numero superior ao total de planetas
    Given o endereço da API
    When realizar a requisição com sucesso
    Then deve ser gerado um numero aleatorio com maior que o numero total de planetas
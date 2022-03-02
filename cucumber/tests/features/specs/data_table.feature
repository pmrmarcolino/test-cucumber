#language: pt

Funcionalidade: Brincando com data-table

@dt_linha
Cenario: Cortar laranja
    Dado que eu tenho umas laranjas 
    |laranja|10|
    Quando eu corto 2 laranjas
    Então eu verifico quantas laranjas sobraram.

@dt_coluna
Cenario: Chupar laranja
    Dado que eu tenho algumas laranjas
    |laranja|
    |10     |
    Quando eu chupo 2 laranjas
    Então eu verifico quantas laranjas sobraram.
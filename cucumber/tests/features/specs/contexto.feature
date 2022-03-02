#language: pt

Funcionalidade: Brincando com contexto
Contexto: 
    Dado que tenho 10 laranjas

Cenario: Comprar laranjas
    Quando eu compro 2 laranjas
    Então eu verifico se o total é 12

Cenario: Vender laranjas
    Quando eu vendo 2 laranjas
    Então eu verifico se o total é 8
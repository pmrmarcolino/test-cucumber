    Dado('que tenho {int} laranjas') do |int|
        @laranjas = int
    end
    
    Quando('eu compro {int} laranjas') do |int|
        @comprar = int
        @resultado = @laranjas + @comprar
    end

    Quando('eu vendo {int} laranjas') do |int|
        @vender = int
        @resultado = @laranjas - @vender
    end
    
    Então('eu verifico se o total é {int}') do |total|
        expect(@resultado).to eq(total)
    end
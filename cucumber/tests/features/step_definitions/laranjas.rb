    
    #variavel com @, consegue ser acessada entre os métodos
    Dado('eu tenha {int} laranjas') do |int|
        @laranjas = int
    end
    
    Quando('eu como {int} laranjas') do |int|
        @comer = int
        @resultado = @laranjas - @comer
    end
        
    Então('eu vejo quantas laranjas eu tenho.') do
        expect(@resultado).to eq(12)
    end

    Então('eu vejo quantas laranjas sobraram.') do
        expect(@resultado).to eq(8)
    end
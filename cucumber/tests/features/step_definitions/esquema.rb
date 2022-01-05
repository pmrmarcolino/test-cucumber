    Quando('eu multiplico minhas {int} pelo {int}') do |int, int2|
        @multiplico = int * int2
    end
    
    Então('eu vejo qual é o {int}.') do |int|
        expect(@multiplico).to eq(int)
    end
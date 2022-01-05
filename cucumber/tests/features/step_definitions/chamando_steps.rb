Dado('eu tenho {int} laranjas no estoque') do |int|
    @laranjas = int
end
    
Quando('eu amasso {int} laranjas') do |int|
    @total = @laranjas - int
end
    
Entao('eu verifico quantas laranjas sobraram no estoque.') do
    expect(@total).to eq(8)
end
    
Quando('revendo {int} laranjas') do |int|
    # chama o passo que voce precisa, diferente do contexto que roda todos os cenários
    steps %Q{
        Dado eu tenho 10 laranjas no estoque
    }
    @total = @laranjas - int
end
    
Entao('eu verifico com quantas laranjas eu fiquei.') do
    expect(@total).to eq(8)
end
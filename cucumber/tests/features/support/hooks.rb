
    
Before ('@comeco') do
    puts 'estou sendo executado antes de cada cenario'
    @soma = 5 + 5
end

After ('@fim') do
    puts 'estou sendo executado depois de cada cenariio'
    @sub = 5 - 5
end

# Colocar as tags na feature ou scenario
# Sem a tag, será execudado em todos os cenários.
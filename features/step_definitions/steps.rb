Given("o endereço da API") do 
    $uri_base = "https://swapi.dev/api/films/" 
end

When ("realizar a requisição") do 
    $response = HTTParty.get(uri_base)
end

Then ("deve ser pego o titulo de cada resultado de filmes, com sucesso") do
    expect($response.code).to eq(200)
    puts "Titulos #{$response}"
end